---
layout: post
title:  "Spatial Kata Notation: writing kata so you can see where you are facing" 
date:   2026-08-10 09:30:00
categories: EIL 
---

[Karate kata](https://en.wikipedia.org/wiki/Karate_kata) is __spatial__. You turn, you step, you change facing, and the floor pattern ([embusen](https://en.wikipedia.org/wiki/Embusen)) is half the work of remembering a form. 
Most of my notes after class were still paragraphs: 
technique names in order, with facing lost in the sentence if I remembered to write it down at all.

I wanted something I could read on a phone between sets, paste into a chat, or print without opening an app. That became **Spatial Kata Notation (SKN)**: a plain-text tree for kata and bunkai. The site and generator live in an open repo here:

[https://github.com/hasantayyar/spatial-kata-notation](https://github.com/hasantayyar/spatial-kata-notation)

Live docs and the tool: [https://hasantayyar.github.io/spatial-kata-notation/](https://hasantayyar.github.io/spatial-kata-notation/)


This is an early, working documentation site plus a generator for Karate teachers and students.

If you train, try writing one short section of a kata you know in SKN after class. If the facing line feels redundant, good: that means you already had it clear. If you keep correcting the facing line, the notation is doing its job.

A single move looks like this:

```text
+-- [STEP → N] -------------- (Face: N)
|   ├─ Stance : [R] Z-D
|   ├─ Action : Right Age-uke (J)
|   └─ Key    : Rise under attack angle
```

Multi-beat transitions nest under one move:

```text
+-- [MAWATTE → E] ----------- (Face: E)
|   ├─ Beat 1 : [R] Z-D
|   │   └─ Action : Right Gedan-barai (G)
|   ├─ Beat 2 : Pull back into [R] N-D
|   │   └─ Action : Right Tetsui Otoshi-uchi / Otoshi-uke (C)
|   └─ Note   : Distinct two-part transition
```
It is not a grading tool, a style authority, or a substitute for partner work in the dojo. Every sheet should name the school reading it follows (for example Shito-Ryu, or dojo-specific).

That sounds obvious. It is also the part most “systems” forget once they get a logo.

The kihon catalog is a practical vocabulary list with belt floors, not an official federation syllabus. Dojos differ. Again: sensei first.

Under the hood the useful bits are small TypeScript modules: an SKN parser for kata spines, a practice-plan generator, and the kihon catalog. No account system, no timer coach, no backend. Plain text in, plain text plan out, copy button.
