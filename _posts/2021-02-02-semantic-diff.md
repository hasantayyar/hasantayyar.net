---
layout: post
title:  "[software] Semantic diffs" 
date:   2021-02-02 10:00:00
categories: software
---

[diffsitter](https://github.com/afnanenayet/diffsitter) - A tree-sitter based AST difftool to get meaningful semantic diffs

[See it in action](https://asciinema.org/a/383291)

> diffsitter performs diffs on text files using the AST to compute the diff instead of using a naive text-based diff. This can give you more semantically meaningful diff information, which will prevent diffs from getting polluted by formatting differences, for example.

> diffstter uses the parsers from the tree-sitter project to parse source code. As such, the languages supported by this tool are limited by the languages supported by the tree-sitter project.

