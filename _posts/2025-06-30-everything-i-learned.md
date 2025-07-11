---
layout: post
title:  "July - Everything I Learned" 
date:   2025-06-30 10:00:00
categories: EIL
---


**A new series I hope to keep monthly. Just a simple note of everything I learned whether trivial or significant.**

#### Gleam vs Elixir

Wiki says:
> **Gleam** is a [general-purpose](https://en.wikipedia.org/wiki/General-purpose_programming_language), [concurrent](https://en.wikipedia.org/wiki/Concurrent_computing), [functional](https://en.wikipedia.org/wiki/Functional_programming) [high-level](https://en.wikipedia.org/wiki/High-level_programming_language) [programming language](https://en.wikipedia.org/wiki/Programming_language) that compiles to [Erlang](https://en.wikipedia.org/wiki/Erlang_(programming_language)) or [JavaScript](https://en.wikipedia.org/wiki/JavaScript) source code.
> 
> Gleam is a statically-typed language, which is different from the most popular languages that run on Erlang’s virtual machine [BEAM](https://en.wikipedia.org/wiki/BEAM_(Erlang_virtual_machine)), [Erlang](https://en.wikipedia.org/wiki/Erlang_(programming_language)) and [Elixir](https://en.wikipedia.org/wiki/Elixir_(programming_language)). Gleam has its own type-safe implementation of OTP, Erlang's actor framework. Packages are provided using the Hex [package manager](https://en.wikipedia.org/wiki/Package_manager), and an index for finding packages written for Gleam is available.

So what I understand is Elixir users can easily use Gleam but why. That’s why I have learned:

Gleam and Elixir are both languages that run on the Erlang VM (BEAM), but they primarily different in their type systems and designs. **Gleam** is statically typed, meaning types are checked at **compile time**, which helps catch errors early and ensures predictability. It favors simplicity and performance, with a syntax inspired by ML-style languages. For example, a Gleam function looks like:

```elixir
fn add(x: Int, y: Int) -> Int {
  x + y
}
```

Elixir, on the other hand, is **dynamically typed ** and focuses on developer productivity, expressiveness, and fault tolerance. It allows for powerful metaprogramming and a flexible development style. While it supports optional type specs, type checking happens at runtime unless explicitly enforced. An equivalent function in Elixir would be:

```elixir
def add(x, y), do: x + y
```

#### Natural Greenfly Remedy: Milk Spray

A surprisingly effective natural solution:
mix 1 part milk with 8 parts water and spray it generously on greenfly-infested plants.

Make sure to cover both sides of the leaves, especially the underside. 

My father recommended this, advising to apply it only when there’s no direct sunlight. I was skeptical, but it worked amazingly well.  

I had to repeat the treatment a few times to eliminate newly hatched greenflies from previously laid eggs.

#### Lavender Oil vs. Mosquitos

Lavender oil seems to repel mosquitos—at least the European kind—and smells pleasant during hot summer days.
It also gives a refreshing feeling. I’m unsure about its safety on facial skin, so apply cautiously.

#### 116116 – Emergency Blocking Hotline in Germany

In Germany, 116116 is the central number to block all your bank cards, SIM cards, and digital ID in case of theft or loss. Works fast.

#### Free SIM Card Replacement

Lost or stolen SIM in Germany? If you don’t have the PIN/PUK and the card doesn’t function, most providers will replace it for free.
If it's functional, they may charge a small fee.

#### Key Cylinder Replacement Takes Time

If a master key for an apartment building (e.g., 8 flats) gets stolen, replacing all key cylinders takes at least 6 week; even if it’s urgent.  
I have also learned that changing a basic cylinder lock yourself isn’t that difficult. It only takes 5 minutes if you have screwdriver and the replacement cylinder.
