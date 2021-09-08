#!/usr/bin/env bash

# Copyright 2021 The Rook Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -o errexit
set -o pipefail

# set BUILD_CRDS_INTO_DIR to build the CRD results into the given dir instead of in-place
: "${BUILD_CRDS_INTO_DIR:=}"

SCRIPT_ROOT=$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd -P)
CONTROLLER_GEN_BIN_PATH=$1
YQ_BIN_PATH=$2
: "${MAX_DESC_LEN:=-1}"
# allowDangerousTypes is used to accept float64
CRD_OPTIONS="crd:maxDescLen=$MAX_DESC_LEN,trivialVersions=true,generateEmbeddedObjectMeta=true,allowDangerousTypes=true"

DESTINATION_ROOT="$SCRIPT_ROOT"
if [[ -n "$BUILD_CRDS_INTO_DIR" ]]; then
  echo "Generating CRDs into dir $BUILD_CRDS_INTO_DIR"
  DESTINATION_ROOT="$BUILD_CRDS_INTO_DIR"
fi
NFS_CRDS_DIR="${DESTINATION_ROOT}/cluster/examples/kubernetes/nfs"

#############
# FUNCTIONS #
#############

generating_crds_v1() {
  echo "Generating nfs crds"
  "$CONTROLLER_GEN_BIN_PATH" "$CRD_OPTIONS" paths="./pkg/apis/nfs.rook.io/v1alpha1" output:crd:artifacts:config="$NFS_CRDS_DIR"
  # Format with yq for consistent whitespace
  $YQ_BIN_PATH read $NFS_CRDS_DIR/nfs.rook.io_nfsservers.yaml > $NFS_CRDS_DIR/crds.yaml
  rm -f $NFS_CRDS_DIR/nfs.rook.io_nfsservers.yaml
}

########
# MAIN #
########
generating_crds_v1
