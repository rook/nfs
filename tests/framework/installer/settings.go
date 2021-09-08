/*
Copyright 2021 The Rook Authors. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package installer

import (
	"io/ioutil"
	"path"

	"github.com/pkg/errors"
	"github.com/rook/nfs/tests/framework/utils"
)

func readManifest(provider, filename string) string {
	rootDir, err := utils.FindRookRoot()
	if err != nil {
		panic(err)
	}
	manifest := path.Join(rootDir, "cluster/examples/kubernetes/", provider, filename)
	logger.Infof("Reading manifest: %s", manifest)
	contents, err := ioutil.ReadFile(manifest)
	if err != nil {
		panic(errors.Wrapf(err, "failed to read manifest at %s", manifest))
	}
	return string(contents)
}
