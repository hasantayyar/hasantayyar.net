---
layout: post
title:  "February '26 - Everything I Learned" 
date:   2026-03-10 09:30:00
categories: EIL 
---


Leslie Lamport once said:

> “If you know something but you don’t write it down, you only think you know it.”

Writing these posts is my way of testing that idea.


### Rethinking Erlang Distribution

While exploring alternatives to `libcluster`, I came across **Partisan**.

Partisan is a distribution layer for BEAM applications that **bypasses standard Distributed Erlang** and manages connections manually over TCP. Instead of relying on Erlang’s built-in node discovery and full-mesh networking assumptions, it allows developers to choose different **network topologies** such as peer-to-peer, client-server, or publish-subscribe depending on the use case.

This is interesting because Erlang’s distribution protocol has been extremely stable for years. Even the official documentation notes that the node communication protocol has remained largely unchanged for a long time.

Sometimes stability is great. Sometimes it also means there is room for experimentation on top.

Partisan is one of those experiments.

- https://hexdocs.pm/partisan/readme.html  
- https://www.erlang.org/docs/22/apps/erts/erl_dist_protocol.html


### The Mystery of `zeb_def_ipc` Files on macOS

At some point I noticed strange files in `/tmp` called `zeb_def_ipc_*`. My first reaction was suspicion.

It turns out they usually come from corporate security software like **Zscaler** or **FortiClient**.

The name comes from **ZebOS**, a commercial routing engine derived from the open-source **GNU Zebra** project. Zebra was created in 1996 and allowed Unix systems to operate as full routing platforms supporting protocols like BGP and OSPF.

Later the creators built **ZebOS**, a commercial version widely used inside networking and security products.

The `ipc` part of the filename stands for **Inter-Process Communication**. These files are actually **Unix domain sockets** used internally so different parts of the VPN client can communicate with each other.

If you want to see which program is using them:

```
sudo lsof /tmp/zeb_def_ipc*
```

If you delete them while your VPN is active, your connection will likely break. Rebooting usually cleans them up.

- https://en.wikipedia.org/wiki/GNU_Zebra

---

## Schmerzensgeld: A German Legal Curiosity

Another concept I learned about recently is **Schmerzensgeld**.

It literally translates to **“pain money.”**

In Germany, it refers to financial compensation for **non-material damages**, such as pain and suffering after an injury. The legal basis comes from §253 of the German Civil Code.

If someone is injured because another party failed in their duty of care, compensation can be awarded depending on factors such as the severity of the injury and the long-term consequences.

One practical example: slipping on an icy sidewalk where maintenance was neglected may lead to compensation claims if responsibility can be proven.

German law tends to be quite structured, and even compensation for suffering has well-documented precedents.

---

## Calendar Traditions I Relearn Every Year

Every year I forget the exact order of the German carnival days.

And every year I learn them again.

- **Rosenmontag**
- **Faschingsdienstag**
- **Aschermittwoch**

Some knowledge simply refuses to stay cached.

---

### Berlinale Moments

I went to Berlinale this year and watched two films that won the **Golden Bear** AND the **Silver Bear** Grand Jury Prizes.

Both films were directed by **Turkish filmmakers**, which made the whole experience even more interesting.

The **Golden Bear** went to *Yellow Letters* by **İlker Çatak**.

Çatak was **born in Berlin to Turkish parents** and is generally considered a German (Berliner) filmmaker. German newspapers highlighted this after the win with headlines along the lines of *“Gold stayed in Berlin.”*

The film follows a theatre couple who lose their jobs after political pressure and struggle to rebuild their lives. It was very relatable to me.

The **Silver Bear Grand Jury Prize** went to *Salvation (Kurtuluş)* by **Emin Alper**.

This one takes place in a remote mountain village and revolves around a land dispute that gradually escalates. The atmosphere is dense and uncomfortable in a deliberate way. I loved "Salvations" artistic part more. 

Both movies were political movies and they try to point out some of the heavy topics in Turkish politics. But it will be reltable to international audiance as well. 

### Göbekli Tepe in Berlin

I also visited the **[Göbekli Tepe - Building community - exhibition](https://www.smb.museum/en/press/press-releases/detail/museumsinsel-berlin-james-simon-galerie-gebaute-gemeinschaft-goebeklitepe-tas-tepeler-und-das-leben-vor-12000-jahren-62-1972026/)** at the **James-Simon-Galerie** in Berlin.

> With the special exhibition “Building community. Göbeklitepe, Taş Tepeler, and life 12,000 years ago” the Vorderasiatisches Museum is focusing on art and sculptures from the first settled cultures in the south-east of present-day Türkiye. There, people erected monumental stone structures and populated them with spectacular stone sculptures. Curated in collaboration with Turkish archaeologists, the exhibition presents the sculptures, many of which are being shown abroad for the first time, together with architectural reconstructions, media, and photos by Spanish photo artist Isabel Muñoz.

The most memorable part was the photographic gallery inside the exhibition. Instead of presenting the site as static archaeological information, the photographs pull you into the landscape and atmosphere of the excavation.

Sometimes a well-curated visual experience explains an ancient site better than text panels.
