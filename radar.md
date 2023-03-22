---
layout: page
title: Radar
permalink: /feed/
---

Quick snippets, quotes, links, un-strucured posts, quick ideas or comments, things I like quickly but probably won't use again, news about security or clourd that I see important and more random stuff

<div class="posts">
    {% for post in site.posts %}
      <p class="post-title">
        <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a> <span class="post-date">{{ post.date | date: "%b %-d, %Y" }}</span>
      </p>
    <p>{{ post.content }}</p>
    <br />
    {% endfor %}
</div> 
