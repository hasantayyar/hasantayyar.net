---
layout: post
title:  "Micro animations" 
date:   2025-09-21 10:00:00
categories: Visual
---

Inspired by this shortest film (256 **Bytes** of Code) [Bitwise Liminal](https://killedbyapixel.github.io/TinyCode/256B/BitwiseLiminal/), I've vibe coded some small animation with the power of SVG.

[**A 193 Bytes animation**](https://hasantayyar.net/assets/micro-animations/193b.html)

<canvas id=c style="width:500p; height: 500px;"><svg onload=setInterval("for(t+=.05,c.width=w=128,i=w*w;i--;)c.getContext`2d`.fillRect(w*(Math.sin(i/w/9+t)+1)/2,i%w,1,1)",t=100)></svg></canvas>
 
[**An 209 Bytes of animation**](https://hasantayyar.net/assets/micro-animations/209b.html)

<canvas id=c style="width:500p; height: 500px;"><svg onload=setInterval("for(t+=.03,c.width=w=128,i=w*w;i--;)X=i%w-64,Y=i/w-64,((X*X+Y*Y)/32+t)%2|0||c.getContext`2d`.fillRect(i%w,i/w,1,1)",t=9)></svg></canvas>


Also see:
- [The smallest SVG possible](https://andyfitzsimon.com/posts/small-svg/)
- [Some analysis on Bitwise Liminal](https://boingboing.net/2024/02/28/a-short-film-generated-by-only-256-bytes-of-code.html)
