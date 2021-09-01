<img alt="Rook" src="Documentation/media/logo.svg" width="50%" height="50%">

[![CNCF Status](https://img.shields.io/badge/cncf%20status-graduated-blue.svg)](https://www.cncf.io/projects)
[![Docker Pulls](https://img.shields.io/docker/pulls/rook/nfs)](https://hub.docker.com/u/rook)
[![Go Report Card](https://goreportcard.com/badge/github.com/rook/nfs)](https://goreportcard.com/report/github.com/rook/nfs)
[![Slack](https://slack.rook.io/badge.svg)](https://slack.rook.io)

# What is Rook?

Rook is an open source **cloud-native storage orchestrator** for Kubernetes, providing the platform, framework, and support for a diverse set of storage solutions to natively integrate with cloud-native environments.

Rook turns storage software into self-managing, self-scaling, and self-healing storage services. It does this by automating deployment, bootstrapping, configuration, provisioning, scaling, upgrading, migration, disaster recovery, monitoring, and resource management. Rook uses the facilities provided by the underlying cloud-native container management, scheduling and orchestration platform to perform its duties.

Rook integrates deeply into cloud native environments leveraging extension points and providing a seamless experience for scheduling, lifecycle management, resource management, security, monitoring, and user experience.

For more details about the storage solutions currently supported by Rook, please refer to the [project status section](#project-status) below.
We plan to continue adding support for other storage systems and environments based on community demand and engagement in future releases. See our [roadmap](ROADMAP.md) for more details.

Rook is hosted by the [Cloud Native Computing Foundation](https://cncf.io) (CNCF) as a [graduated](https://www.cncf.io/announcements/2020/10/07/cloud-native-computing-foundation-announces-rook-graduation/) level project. If you are a company that wants to help shape the evolution of technologies that are container-packaged, dynamically-scheduled and microservices-oriented, consider joining the CNCF. For details about who's involved and how Rook plays a role, read the CNCF [announcement](https://www.cncf.io/blog/2018/01/29/cncf-host-rook-project-cloud-native-storage-capabilities).

## Getting Started and Documentation

For installation, deployment, and administration of the NFS storage provider, see our [Documentation](https://rook.io/docs/nfs/master).

## Contributing

We welcome contributions. See [Contributing](CONTRIBUTING.md) to get started.

## Report a Bug

For filing bugs, suggesting improvements, or requesting new features, please open an [issue](https://github.com/rook/nfs/issues).

### Reporting Security Vulnerabilities

If you find a vulnerability or a potential vulnerability in Rook please let us know immediately at
[cncf-rook-security@lists.cncf.io](mailto:cncf-rook-security@lists.cncf.io). We'll send a confirmation email to acknowledge your
report, and we'll send an additional email when we've identified the issues positively or
negatively.

For further details, please see the complete [security release process](SECURITY.md).

## Contact

Please use the following to reach members of the community:

- Slack: Join our [slack channel](https://slack.rook.io)
- Forums: [rook-dev](https://groups.google.com/forum/#!forum/rook-dev)
- Twitter: [@rook_io](https://twitter.com/rook_io)
- Email (general topics): [cncf-rook-info@lists.cncf.io](mailto:cncf-rook-info@lists.cncf.io)
- Email (security topics): [cncf-rook-security@lists.cncf.io](mailto:cncf-rook-security@lists.cncf.io)

### Community Meeting

A regular community meeting takes place every other [Tuesday at 9:00 AM PT (Pacific Time)](https://zoom.us/j/392602367?pwd=NU1laFZhTWF4MFd6cnRoYzVwbUlSUT09).
Convert to your [local timezone](http://www.thetimezoneconverter.com/?t=9:00&tz=PT%20%28Pacific%20Time%29).

Any changes to the meeting schedule will be added to the [agenda doc](https://docs.google.com/document/d/1exd8_IG6DkdvyA0eiTtL2z5K2Ra-y68VByUUgwP7I9A/edit?usp=sharing) and posted to [Slack #announcements](https://rook-io.slack.com/messages/C76LLCEE7/) and the [rook-dev mailing list](https://groups.google.com/forum/#!forum/rook-dev).

Anyone who wants to discuss the direction of the project, design and implementation reviews, or general questions with the broader community is welcome and encouraged to join.

- Meeting link: <https://zoom.us/j/392602367?pwd=NU1laFZhTWF4MFd6cnRoYzVwbUlSUT09>
- [Current agenda and past meeting notes](https://docs.google.com/document/d/1exd8_IG6DkdvyA0eiTtL2z5K2Ra-y68VByUUgwP7I9A/edit?usp=sharing)
- [Past meeting recordings](https://www.youtube.com/playlist?list=PLP0uDo-ZFnQP6NAgJWAtR9jaRcgqyQKVy)

## Project Status

The status of each storage provider supported by Rook can be found in the [main Rook repo](https://github.com/rook/rook#project-status).

| Name | Details                                                                                                                                                                                                        | API Group            | Status |
| ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------- | ------ |
| NFS  | [Network File System (NFS)](https://github.com/nfs-ganesha/nfs-ganesha/wiki) allows remote hosts to mount file systems over a network and interact with those file systems as though they are mounted locally. | nfs.rook.io/v1alpha1 | Alpha  |

### Official Releases

Official releases of the NFS operator can be found on the [releases page](https://github.com/rook/nfs/releases).
Please note that it is **strongly recommended** that you use [official releases](https://github.com/rook/nfs/releases) of Rook, as unreleased versions from the master branch are subject to changes and incompatibilities that will not be supported in the official releases.
Builds from the master branch can have functionality changed and even removed at any time without compatibility support and without prior notice.

Releases of the NFS operator prior to v1.7 are found in the main [Rook repo](https://github.com/rook/rook/releases).

## Licensing

Rook is under the Apache 2.0 license.
