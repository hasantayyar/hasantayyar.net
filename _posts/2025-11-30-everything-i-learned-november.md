---
layout: post
title:  "November - Everything I Learned" 
date:   2025-11-30 10:00:00
categories: EIL
---

<small>Previously: [EIL June](https://hasantayyar.net/eil/2025/06/30/everything-i-learned/), [EIL July](https://hasantayyar.net/eil/2025/07/30/everything-i-learned-july/), [EIL August](https://hasantayyar.net/eil/2025/08/30/everything-i-learned-august/), [EIL September](https://hasantayyar.net/eil/2025/09/30/everything-i-learned-september/), [EIL October](https://hasantayyar.net/eil/2025/10/30/everything-i-learned-october/)</small>

### **In-Place Pod Resizing in Kubernetes**

Kubernetes now supports true in-place pod resource resizing, allowing CPU and memory requests or limits to be increased or decreased without triggering a pod restart. This removes the need for disruptive rolling updates when tuning workloads. The feature is enabled through updates to the PodSpec and relies on the kubelet’s ability to apply cgroup changes live. It significantly improves cluster efficiency, especially for autoscaled or performance-sensitive workloads where right-sizing can be done reactively instead of preemptively. Reference: https://palark.com/blog/in-place-pod-resizing-kubernetes

### **OpenTelemetry Transformation Language (OTTL)**

OTTL is a declarative transformation language integrated into the OpenTelemetry Collector pipeline. It enables deterministic manipulation of traces, metrics and logs through rule-based statements that resemble fluent-bit filter semantics but with stronger typing and composability. OTTL.run provides an interactive environment to write, test and validate transformations before deploying them in production. This simplifies complex telemetry normalization tasks such as attribute remapping, sampling logic and record enrichment. Reference: https://ottl.run
