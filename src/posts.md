---
layout: breadcrumbs
title: The Blog
paginate:
  collection: posts
  per_page: 5
---

# The Blog

<ul class="blog-list">
  <% paginator.resources.each do |post| %>
    <article>
      <h3>
        <a href="<%= post.relative_url %>">
          <%= post.data.title %>
        </a>
      </h3>
      <em>
        <%= post.data.date.strftime("%B %-m, %Y") %>
      </em>
      <p>
        <%= post.content.to_s.strip.lines.reject { |l| l.include? "<blockquote" }.first.to_s.html_safe %>
      </p>
    </article>
  <% end %>
</ul>

<% if paginator.total_pages > 1 %>
  <ul class="flex-between no-bullets margin-bottom-2 padding-left-0">
    <% if paginator.previous_page %>
      <li>
        <a href="<%= paginator.previous_page_path %>">Prev Page</a>
      </li>
    <% else %>
      <li></li>
    <% end %>
    <% if paginator.next_page %>
      <li>
        <a href="<%= paginator.next_page_path %>">Next Page</a>
      </li>
    <% else %>
      <li></li>
    <% end %>
  </ul>
<% end %>
