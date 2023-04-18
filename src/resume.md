---
layout: no_header
title: Resume
---

<% collections.jobs.resources.reverse.each do |job| %>
  <article class="job">
    <h3> <%= job.data.company %> </h3>
    <h4>
      <%= job.data.title %>
    </h4>
    <div>
      <em>
        <%= job.data.start_date.strftime("%b %Y") %> - <%= job.data.end_date&.strftime("%b %Y")  || "Present" %>
      </em>
    </div>
    <div>
      <%= job.content %>
    </div>
  </article>
<% end %>
