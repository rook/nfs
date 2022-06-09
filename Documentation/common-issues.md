---
title: Common Issues
weight: 8000
---

# Common Issues

**The Rook NFS operator is [deprecated](https://github.com/rook/nfs#deprecated)**

To help troubleshoot your Rook clusters, here are some tips on what information will help solve the issues you might be seeing.
If after trying the suggestions found on this page and the problem is not resolved, the Rook team is very happy to help you troubleshoot the issues in their Slack channel. Once you have [registered for the Rook Slack](https://slack.rook.io), proceed to the General channel to ask for assistance.

# Troubleshooting Techniques

Kubernetes status and logs are the the main resources needed to investigate issues in any Rook cluster.

## Kubernetes Tools

Kubernetes status is the first line of investigating when something goes wrong with the cluster. Here are a few artifacts that are helpful to gather:

* Rook pod status:
  * `kubectl get pod -n <cluster-namespace> -o wide`
    * e.g., `kubectl get pod -n rook-nfs -o wide`
* Logs for Rook pods
  * Logs for the operator: `kubectl logs -n <cluster-namespace> -l app=rook-nfs-operator`
    * e.g., `kubectl logs -n rook-nfs -l app=rook-nfs-operator`
  * Logs for a specific pod: `kubectl logs -n <cluster-namespace> <pod-name>`, or a pod using a label such as mon1: `kubectl logs -n rook-nfs -l <label-matcher>`
    * e.g., `kubectl logs -n rook-nfs -l mon=a`
  * Logs on a specific node to find why a PVC is failing to mount:
    * Connect to the node, then get kubelet logs (if your distro is using systemd): `journalctl -u kubelet`
  * Pods with multiple containers
    * For all containers, in order: `kubectl -n <cluster-namespace> logs <pod-name> --all-containers`
    * For a single container: `kubectl -n <cluster-namespace> logs <pod-name> -c <container-name>`
  * Logs for pods which are no longer running: `kubectl -n <cluster-namespace> logs --previous <pod-name>`

Some pods have specialized init containers, so you may need to look at logs for different containers
within the pod.

* `kubectl -n <namespace> logs <pod-name> -c <container-name>`
* Other Rook artifacts: `kubectl -n <cluster-namespace> get all`
