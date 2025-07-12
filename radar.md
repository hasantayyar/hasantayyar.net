---
layout: page
title: Radar
permalink: /feed/
---

Quick snippets, quotes, links, un-strucured posts, quick ideas or comments, things I like quickly but probably won't use again, news about security or clourd that I see important and more random stuff

<div class="posts">
    {% for post in site.posts %}
      <h2 class="post-title">
        <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a> <time class="post-date">{{ post.date | date: "%b %-d, %Y" }}</time>
      </h2>
    <p>{{ post.content }}</p>
    <div class="blog-separator"><span class="line"></span><span class="icon">✦</span><span class="line"></span></div>
    {% endfor %}
</div> 
