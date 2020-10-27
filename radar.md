---
layout: page
title: Radar
permalink: /feed/
---

Quick snippets, quotes, links, un-strucured posts, quick ideas or comments, things I like quickly but probably won't use, news about security or clourd that I see important....

<ul class="posts">
    {% for post in site.posts %}
      <li>
        <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a> <span class="post-date">{{ post.date | date: "%b %-d, %Y" }}</span>
      </li>
    {% endfor %}
  </ul> 
</div>
