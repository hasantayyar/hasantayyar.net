---
layout: post
title:  "June '26 - Everything I Learned"
date:   2026-07-01 09:30:00
categories: EIL
---

Every month I share the things I leraned and remembered to write down somewhere. Here are the June notes.

## Berlin is serious about bats

I discovered a *naturbelassener Park* around Tempelhof nearby my apartment. Berlin quietly protects a lot of semi-wild spaces like bats.

[NABU Berlin](https://berlin.nabu.de/) says that Berlin is the “capital of bats”: 18 bat species have been recorded in the city, and up to 11,000 bats overwinter in the Spandau Citadel alone. ([NABU - Naturschutzbund Deutschland e.V.](https://berlin.nabu.de/tiere-und-pflanzen/saeugetiere/fledermaus/index.html))

## Nazi drug experiments

While I show a Nazi era concentration camp to my family during their visit I learned lots about the drug experiments in these camps.

Nazi doctors conducted radical medical experiments on concentration camp prisoners without consent.
The US Holocaust Memorial Museum groups these experiments into survival, drug-treatment, and ideological/racial categories. ([Holocaust Encyclopedia](https://encyclopedia.ushmm.org/content/en/article/nazi-medical-experiments))

More specifically, SS doctor __Kurt Plötner__ is associated with **mescaline** experiments at Dachau, 
apparently connected to interrogation and “truth serum” research. These expreiments later mentioned on LSD researches.

This is the kind of topic where details matter, because it is easy for internet summaries to become sloppy or sensational. ([Cambridge University Press & Assessment](https://www.cambridge.org/core/journals/acta-neuropsychiatrica/article/psychotropic-drugs-research-in-nazi-germany-the-triumph-of-de-principle-of-malfeasance/72702C7C6B9607759A0CFB639BBA5599))


## Eichenprozessionsspinner

I learned the story behind the German word that looks like a keyboard accident: **Eichenprozessionsspinner**, the oak processionary moth.
the city was invaded, probabyl still is. Especially in the outer parts.

The adult moth is not the main issue. The caterpillars are. Their tiny hairs contain an irritating toxin and can cause skin, eye, throat, and allergic reactions.

Berlin is a good habitat for them because the city has many oaks in parks and along streets. ([Berlin.de](https://www.berlin.de/sen/gesundheit/gesundheitsschutz-und-umwelteinfluesse/tiere/eichenprozessionsspinner-1367028.php))

So, no touching strange hairy caterpillars on oak trees. Seems like a very simple rule but they can land on you while chilling under a tree because they hang together in crowds in their **nests** and they tend to drop.

## Plants that keep appearing

My father once pointed out a wild herb named (in Turkish) **sinir otu** to me on a Berlin sidewalk. He mentioned that it's a medically important herb.
I did not care much at the time. Now I keep seeing it everywhere.

The German name is **Spitzwegerich**, in English **ribwort plantain**, and its Latin name is **Plantago lanceolata**.
The European Medicines Agency lists it as a traditional herbal medicine used for throat irritation, dry cough, cough with cold, and minor skin inflammation. ([European Medicines Agency (EMA)](https://www.ema.europa.eu/en/documents/herbal-monograph/final-european-union-herbal-monograph-plantaginis-lanceolatae-folium-revision-1_en.pdf))

Also learned that blackberry tea is great for eye pressure apperently. I am not turning this into medical advice. It is just good tea actually.

## Barry’s Berlin

Barry’s gymb Berlin gave me a small anthropology moment :/

Luxury gym, waiting list, strange people waiting outside, weird Google Maps energy, and a visible class signal around fitness.

I do not have a deep conclusion. I only noticed again that gyms are not only about bodies. They are also about status, identity, aesthetics, and who feels invited into a space.

## NUMA finally clicked

I learned more about **NUMA**, short for **Non-Uniform Memory Access**.

Small mental model:

```text
Small server:
CPU <-> RAM

Large multi-socket server:
CPU0 <-> RAM0
CPU1 <-> RAM1
CPU2 <-> RAM2
CPU3 <-> RAM3
```

Each CPU socket has memory that is physically closer to it. Local memory access is faster. Remote memory access still works, but it crosses the interconnect and costs more latency. Red Hat describes NUMA as a design where memory resources are allocated close to a CPU to improve access time. ([Red Hat Documentation](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux_for_real_time/7/html/tuning_guide/non-uniform_memory_access))

Linux exposes this topology nicely:

```bash
numactl --hardware
lscpu | grep NUMA
numastat
numactl --show
```

The practical lesson: big servers are not just “more CPU and more RAM”. Placement matters. Threads and memory should ideally live close to each other. Otherwise, a powerful machine can quietly waste performance by moving data across sockets.

Linux also has NUMA memory policy support, which controls from which NUMA node memory gets allocated. ([Kernel Documentation](https://docs.kernel.org/admin-guide/mm/numa_memory_policy.html))

## Strudel and TidalCycles

I tried to configure Strudel and TidalCycles locally, then discovered that [Strudel](https://strudel.cc/) already works in the browser.

Strudel is basically a browser-based live coding environment that ports the TidalCycles pattern language to JavaScript. Great way to start making patterns without turning the setup itself into the hobby. ([Strudel](https://strudel.cc/))

## Music rabbit holes

A great house track from Saudi Arabia:

[Shoft Alhala, Radio Edit, by Vinyl Mode and Moayad](https://www.youtube.com/watch?v=_rf-SuYnp0I)

I also learned about Assa’d Khoury’s *Electronic Touches Belly Dance*, a 1978 Lebanese instrumental album built around funky electronic keyboards and Arabic melodies. It was reissued in 2026 after nearly 50 years. ([WEWANTSOUNDS](https://wewantsounds.bandcamp.com/album/electronic-touches-belly-dance))

The most interesting part for me was the modified Farfisa-style keyboard world: electronic organs adapted for Oriental scales and quarter-tones. Arabic music needs pitches that standard Western keyboards do not naturally provide. Hardware had to bend toward the music.

## AWS “What is” pages

I also appreciated AWS’s “What is” pages again.

The [computer chip explanation](https://aws.amazon.com/what-is/computer-chip/) is simple, direct, and mostly free of forced metaphors. It explains chips, silicon, etching, analog circuits, digital circuits, ASICs, SoCs, and AWS custom chips like Graviton, Inferentia, and Trainium in a clean way. ([Amazon Web Services, Inc.](https://aws.amazon.com/what-is/computer-chip))

Good technical writing does not always need storytelling. Sometimes it just needs to explain the thing.
