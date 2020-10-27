---
layout: page
title: Radar
permalink: /feed/
---

Quick snippets, quotes, links, un-strucured posts, quick ideas or comments, things I like quickly but probably won't use, news about security or clourd that I see important....

<div class="posts">
    {% for post in site.posts %}
      <p>
        <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a> <span class="post-date">{{ post.date | date: "%b %-d, %Y" }}</span>
      </p>
    <p>{{ post.excerpt }}</p>
    <br />
    {% endfor %}
</div> 
