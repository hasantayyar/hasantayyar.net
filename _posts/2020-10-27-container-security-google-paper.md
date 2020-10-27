---
layout: post
title:  "[paper] A paper by Google: Why container Security matters?" 
date:   2020-10-27 10:00:00
categories: paper
---

> Understanding the container security concepts that impact your organization

[https://services.google.com/fh/files/misc/why_container_security_matters.pdf](https://services.google.com/fh/files/misc/why_container_security_matters.pdf)

*TLDR;*

Scream these to your developer team: 

- Don’t let the shipping container imagery fool you; containers are not a special security boundary
- Containers use primitives of the Linux kernel (cgroups, namespaces) toisolate processes in an environment
- A “container image” is your application and its dependencies, and uses a “base image”as the basis for thecontainer image
- Container registries host your container images. It’s important that you be able to trust your base and container images, and that you use a private, trusted registry
