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


This is an early, working documentation site plus a generator. The first full kata example is Pinan Nidan on a Shito-Ryu reading I use for study. Other kata and schools can be written the same way if someone wants to contribute sheets, as long as they are labeled clearly and treated as notes, not canon.

If you train, try writing one short section of a kata you know in SKN after class. If the facing line feels redundant, good: that means you already had it clear. If you keep correcting the facing line, the notation is doing its job.


## What problem this is trying to solve

Traditional teaching does not need a new notation. Sensei shows, corrects, and repeats. Students absorb timing, posture, and intent on the floor.

What *does* fail often is private review. After class you try to reconstruct:

- which way you were facing after the third turn
- whether the punch was oi-tsuki or gyaku-tsuki
- how a two-part transition was ordered (for example gedan-barai, then pull to nekoashi with otoshi)

Paragraph notes hide that structure. A diagram can help, but diagrams are awkward to edit in a notebook or message. SKN keeps the sequence as text, and puts movement and facing in the spine of each line.

A single move looks like this:

```text
+-- [STEP → N] -------------- (Face: N)
|   ├─ Stance : [R] Z-D
|   ├─ Action : Right Age-uke (J)
|   └─ Key    : Rise under attack angle
```

You read top to bottom. Each `+--` branch is one beat. `Face` is orientation after the move, not a floor coordinate. Stances use short codes (`Z-D`, `N-D`, `S-D`). Heights stay as `J` / `C` / `G`.

Turns are written toward a destination facing, for example `[MAWATTE → W]`, with optional quality notes like `· deep` when useful.

## Design choices that mattered

A few early drafts used degrees everywhere (`TURN 90° W`) and labeled facing as `Position`. That was ambiguous. Destination facing first is easier to scan. Degrees and “deep / soft” stay optional.

Multi-beat transitions nest under one move:

```text
+-- [MAWATTE → E] ----------- (Face: E)
|   ├─ Beat 1 : [R] Z-D
|   │   └─ Action : Right Gedan-barai (G)
|   ├─ Beat 2 : Pull back into [R] N-D
|   │   └─ Action : Right Tetsui Otoshi-uchi / Otoshi-uke (C)
|   └─ Note   : Distinct two-part transition
```

Bunkai can stay on the same spine with a `Bunkai` line, or use a dual attacker/defender layout when you are studying partner work. The repo’s Pinan Nidan opening example uses a 45° off-axis reading; that is one possible application, not a claim of orthodoxy.

The character on the site mark is **形** (form), the spelling used in much modern karate for kata, rather than 型.

## Hard rule: notation is subordinate to teaching

If a sheet disagrees with your sensei, the sheet is wrong. Update the sheet.

SKN is for:

- remembering embusen after class
- reviewing sequence before solo practice
- sharing a draft with training partners
- annotating one bunkai reading you were actually shown

It is not a grading tool, a style authority, or a substitute for partner work in the dojo. Every sheet should name the school reading it follows (for example Shito-Ryu, or dojo-specific).

That sounds obvious. It is also the part most “systems” forget once they get a logo.

## What is in the repo

The project is a static Astro site on GitHub Pages.

- **Philosophy / Guide / Reference**: why it exists, how to read a sheet, and the compact key
- **Example**: full Pinan Nidan (Shito-Ryu reading) in SKN
- **Bunkai page**: partner-layout sample tied to the opening
- **Keiko (practice generator)**: client-side tool that either
  - parses a pasted kata sheet into practice loops (auto, facing groups, isolated tech), or
  - builds a Shito-ryu kihon plan with no sheet, filtered by max belt so a yellow belt is not asked to drill Tsugi-ashi by name

The kihon catalog is a practical vocabulary list with belt floors, not an official federation syllabus. Dojos differ. Again: sensei first.

Under the hood the useful bits are small TypeScript modules: an SKN parser for kata spines, a practice-plan generator, and the kihon catalog. No account system, no timer coach, no backend. Plain text in, plain text plan out, copy button.

## Why plain text

I care about a few boring properties:

1. **Diffable.** You can put sheets in git and see what changed.
2. **Portable.** Works in email, chat, Markdown, paper.
3. **Readable without software.** The website helps; it is not required to use the notation.
4. **Honest about limits.** A tree will not carry kime, breathing, or the feel of a correction. It carries labels and order.
