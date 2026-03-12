---
layout: post
title:  "February '26 - Everything I Learned" 
date:   2026-03-10 09:30:00
categories: EIL 
---


Leslie Lamport once said:

> “If you know something but you don’t write it down, you only think you know it.”

### Rethinking Erlang Distribution

While exploring alternatives to `libcluster`, I came across **Partisan**.

[Partisan](https://hexdocs.pm/partisan/readme.html ) is a distribution layer for BEAM applications that **bypasses standard Distributed Erlang** and manages connections manually over TCP. Instead of relying on Erlang’s built-in node discovery and full-mesh networking, it allows developers to choose different **network topologies** such as peer-to-peer, client-server, or publish-subscribe depending on the use case. Although Erlang’s distribution protocol has been extremely stable for years and even the official documentation notes that the node communication protocol has remained largely unchanged for a long time, Partisan replaces this mature BEAM distribution layer. Stability is great but experimental new tools can create more flexibility and opportunities. Partisan is one of those experiments.

Read more:
- [hexdocs.pm/partisan](https://hexdocs.pm/partisan/readme.html)  
- [https://www.erlang.org/docs/22/apps/erts/erl_dist_protocol.html](https://www.erlang.org/docs/22/apps/erts/erl_dist_protocol.html)


### The Mystery of `zeb_def_ipc` Files on macOS and ZebOs in Corporte Services

At some point I saw strange files in `/tmp` called `zeb_def_ipc_*`.It seemed suspicion. Turns out they usually come from corporate security software like **Zscaler** or **FortiClient**. The name comes from **ZebOS**, a commercial routing engine derived from the open-source **GNU Zebra** project. 

> Zebra was created in 1996 and allowed Unix systems to operate as full routing platforms supporting protocols like BGP and OSPF.

Later the creators built **ZebOS**, a _commercial_ version widely used inside networking and security products.

The `ipc` part of the filename stands for **Inter-Process Communication**. These files are actually **Unix domain sockets** used internally so different parts of the VPN client can communicate with each other.

If you want to see which program is using them:

```
sudo lsof /tmp/zeb_def_ipc*
```

If you delete them while your VPN is active, your connection will likely break. Rebooting usually cleans them up.

- [https://en.wikipedia.org/wiki/GNU_Zebra](https://en.wikipedia.org/wiki/GNU_Zebra)


## Schmerzensgeld: A German Legal Curiosity

Another concept I learned about recently is **Schmerzensgeld**. It literally translates to **“pain money.”**

In Germany, it refers to financial compensation for **non-material damages**, such as pain and suffering after an injury. The legal basis comes from §253 of the German Civil Code. One example: slipping on an icy sidewalk where maintenance was neglected may lead to compensation claims if responsibility can be proven.

## Calendar Traditions I Relearn Every Year

Every year I forget the exact order of the German carnival days.

And every year I learn them again.

- **Rosenmontag**: Carnival Monday. Huge in Cologne, Düsseldorf, and Mainz. There is a special civil comission that prepares the huge carnival there. During carnival there are huge street parades, exessive drinking, and candy throwing. Historically carnival allowed people to mock authorities and social hierarchy, which is why political satire is still common in the parade. 
- **Faschingsdienstag**: Carnival Tuesday. The carnival party continues to this day. After midnight the celebrations stops.
- **Aschermittwoch**: Ash Wednesday. This day is mostly about religion. The theme shifts from party to reflection.

Different terms are used for carnival around the region:
- Karneval: Rhineland (Cologne, Düsseldorf)
- Fasching: Bavaria, Austria
- Fastnacht / Fasnet: Southwest Germany, Switzerland

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

I learned again the importance of **Göbekli Tepe** on the human history again.

<img width="1920" height="937" alt="image" src="https://github.com/user-attachments/assets/a39b6c89-2cff-47eb-8b22-76988874d083" />

<img width="1920" height="937" alt="image" src="https://github.com/user-attachments/assets/4220ca1c-21fd-44ad-8958-aeda2d8c7cc9" />

