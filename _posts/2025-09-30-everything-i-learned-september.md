---
layout: post
title:  "September - Everything I Learned" 
date:   2025-09-30 10:00:00
categories: EIL
---


Previously:
- [EIL June](https://hasantayyar.net/eil/2025/06/30/everything-i-learned/)
- [EIL July](https://hasantayyar.net/eil/2025/07/30/everything-i-learned-july/)
- [EIL August](https://hasantayyar.net/eil/2025/08/30/everything-i-learned-august/)

#### Databases: RocksDB, FoundationDB & LMDB

Three very different types of databases caught my eye this month: RocksDB, FoundationDB, and LMDB.

**RocksDB** is an embedded, SSD-optimized key-value store from Facebook, great for local high-throughput workloads.

**FoundationDB**, Apple’s open-source project, flips that around. It’s a distributed, ACID-compliant database that scales horizontally while keeping strong consistency. 

**LMDB**: It's minimalist database. Also suitable for embedded projects.
It's a memory-mapped B+ tree with zero-copy reads and strong ACID guarantees. Small, __fast__, but **limited to one writer at a time**.
Each one nails a different corner of the performance–consistency–simplicity triangle.

There are other interesting compact databases here in this tool to benchmark them: https://github.com/LMDB/dbbench

#### Random stufff
- [StarRocks](https://www.starrocks.io/): an MPP SQL engine built for lightning-fast analytics.
- [StateGraph.dev](https://stategraph.dev/): Stategraph replaces the flat state file with a database-backed graph. Independent changes can run in parallel, and the state becomes queryable and auditable. Parallel teams. No lock waiting. Audit-ready state.
- [Rebar4 Kickstarter](https://x.com/grisporg/status/1963674539008639403): Erlang’s build system keeps evolving. [Go support](https://www.kickstarter.com/projects/peerstritzinger/rebar3-integrating-with-erlang-otp).
- [Elixir Koans](https://github.com/elixirkoans/elixir-koans): a fun, interactive way to learn idiomatic Elixir.

#### Copying Files Faster on Linux
- For large local copies: `rsync -a --info=progress2 /source/ /destination/`
- For tons of small files: `tar cf - /source | (cd /destination && tar xf -)`
- Across disks: `rsync -a --info=progress2 --inplace --no-whole-file /source/ /destination/`

#### 256 Bytes of Art

Discovered **A Mind Is Born** by **Linus Åkesson**. A full audiovisual demo packed into just 256 bytes of code. Crazy part is it's audio and visual.

- https://linusakesson.net/scene/a-mind-is-born/
