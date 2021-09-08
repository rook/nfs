---
title: Prerequisites
weight: 1000
---
{% include_relative branch.liquid %}

# Prerequisites

Rook can be installed on any existing Kubernetes cluster as long as it meets the minimum version
and Rook is granted the required privileges (see below for more information).

## Minimum Version

Kubernetes **v1.16** or higher is supported for the NFS operator.

## Bootstrapping Kubernetes

Rook will run wherever Kubernetes is running. Here are a couple of simple environments to help you get started with Rook.

* [Minikube](https://github.com/kubernetes/minikube/releases): A single-node cluster, simplest to get started
* [Kubeadm](https://kubernetes.io/docs/setup/independent/install-kubeadm/): One or more nodes for more comprehensive deployments
