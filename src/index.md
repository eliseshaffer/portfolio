---
layout: default
paginate:
  collection: posts
  per_page: 3
---
👋🏻 Hey! I'm Elise and I use she/her pronouns. I'm a Rubyist, an engineering manager, and a trans
woman living in Longmont, CO.

I've worked in the security, payments, and consumer electronics
industries. View my full [resume here](/resume).

I also give talks, develop courses, and blog about various
topics.

In my spare time, I enjoy cycling, climbing, cooking, and reading.

I keep a list of the tech I use [here](/uses).

<h2 class="margin-top-2">Latest from <a href="/posts">The Blog</a></h2>
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
        <%= post.summary %>
      </p>
    </article>
    <% end %>
</ul>

<a href="/posts">View All Posts</a>

<%= render "contact_form" %>
