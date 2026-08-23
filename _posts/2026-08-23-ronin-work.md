---
layout: post
title:  "Visual work - A ronin demo" 
date:   2026-08-23 10:59:00
categories: visual 
---

Below is a [Ronin](https://100r.co/site/ronin.html) work.
Ronin is an amateur open source procedural image processing tool by an [inspriational creator](https://wiki.xxiivv.com/site/home.html).
> Ronin is a procedural graphics tool designed to automate simple graphical tasks, like resizing, cropping, coloring, and generating algorithmic images. It interprets a minimal dialect of LISP, look at the examples to better understand how this all works.

The code below is evaluated via a Ronin js version [https://hundredrabbits.github.io/Ronin/](https://hundredrabbits.github.io/Ronin/).

![Ronin work](/assets/ronin-generations/ronin-26Q11-620401.jpg)

```lisp
; RESIDUAL ORBIT
(clear)
(resize 2400 1600)

(def f (get-frame))
(def x 1069)
(def y 650)

; atmospheric field
(fill (rect 0 0 f:w f:h)
  (gradient (line 0 0 0 f:h)
    ("#03040b" "#101936" "#3b214b" "#070914")))

; distant horizon
(fill (rect 0 1040 f:w 560) "#070b19")
(stroke (line 0 1040 f:w 1040) "#e05691" 3)
(stroke (line 0 1052 f:w 1052) "#4fb9b0" 1)

; spectral atmosphere
(fill (circle x y 520)
  (gradient (line x (sub y 520) x (add y 520))
    ("#121636" "#512650" "#091126")))

(fill (circle x y 390)
  (gradient (line x (sub y 390) x (add y 390))
    ("#e55d91" "#ffb47e" "#23204a")))

; eclipse
(fill (circle (add x 8) (add y 6) 245) "#050610")
(stroke (circle x y 252) "#ff6e9f" 4)
(stroke (circle (sub x 9) (add y 3) 246) "#58cfc0" 2)

; orbital traces
(stroke (ellipse x y 570 170) "#24556c" 3)
(stroke (ellipse x y 510 118) "#7a3565" 2)
(stroke (arc x y 540 (rad 198) (rad 326)) "#ff6e9f" 6)
(stroke (arc x y 492 (rad 12) (rad 142)) "#61d6c0" 4)
(stroke (arc x y 430 (rad 214) (rad 304)) "#d8ffe9" 2)
(stroke (arc x y 358 (rad 42) (rad 154)) "#ff947d" 2)

; measurement rays
(stroke (line x y 80 1600) "#19405b" 2)
(stroke (line x y 240 1600) "#28556a" 2)
(stroke (line x y 400 1600) "#19405b" 2)
(stroke (line x y 560 1600) "#28556a" 2)
(stroke (line x y 720 1600) "#19405b" 2)
(stroke (line x y 880 1600) "#28556a" 2)
(stroke (line x y 1040 1600) "#19405b" 2)
(stroke (line x y 1160 1600) "#28556a" 2)
(stroke (line x y 1240 1600) "#28556a" 2)
(stroke (line x y 1360 1600) "#19405b" 2)
(stroke (line x y 1520 1600) "#28556a" 2)
(stroke (line x y 1680 1600) "#19405b" 2)
(stroke (line x y 1840 1600) "#28556a" 2)
(stroke (line x y 2000 1600) "#19405b" 2)

; floor bands
(stroke (line 0 1100 f:w 1100) "#1d3450" 2)
(stroke (line 0 1180 f:w 1180) "#1d3450" 2)
(stroke (line 0 1290 f:w 1290) "#23465c" 2)
(stroke (line 0 1435 f:w 1435) "#1b304e" 2)
(stroke (line 0 1580 f:w 1580) "#23465c" 2)

; signal crosshair
(stroke (line (sub x 670) y (sub x 310) y) "#4fb9b0" 2)
(stroke (line (add x 310) y (add x 670) y) "#e05691" 2)
(stroke (line x (sub y 670) x (sub y 310)) "#e05691" 2)
(stroke (line x (add y 310) x (add y 670)) "#4fb9b0" 2)

; central residual pulse
(stroke (circle x y 92) "#d8ffe9" 2)
(stroke (circle x y 76) "#e05691" 2)
(fill (circle x y 8) "#d8ffe9")

; CRT veil
(stroke (line 0 1090 f:w 1090) "#111b32" 1)
(stroke (line 0 1110 f:w 1110) "#111b32" 1)
(stroke (line 0 1130 f:w 1130) "#111b32" 1)
(stroke (line 0 1150 f:w 1150) "#111b32" 1)
(stroke (line 0 1170 f:w 1170) "#111b32" 1)

(export)
```
