---
layout: post
title: I Love Ruby
date: 2023-12-18
excerpt: I've done a lot in my career. From working on business support software to big backend systems and even robotics. If there's been a consistent through-line to my career, it's the Ruby programming language. 
banner_image_url: "2023-12-18-ruby-logo.png"
---

<figure>
    <img src="/images/2023-12-18-ruby-logo.png"
         alt="Ruby logo">
    <figcaption>
        The Ruby logo is Copyright © 2006, Yukihiro Matsumoto and is licensed under Creative Commons Attribution-ShareAlike 2.5
    </figcaption>
</figure>

I've done a lot in my career. From working on business support software to big backend systems and even robotics. If there's been a consistent through-line to my career, it's the Ruby programming language. 

In recent years, Ruby has fallen out of favor with the tech industry, but I still love it. It's a great language with so many strengths that it hurts when I see people trash Ruby or say its time is over. Thankfully, I'm not alone. There are so many Ruby devs still out here. The community is niche, but thriving. People are puzzled by this sometimes. Once, a colleague once said "rubyists really love ruby," with an air of surprise. I've heard others trash ruby for not having types. One person laughed at me when I said Ruby was an "expressive language" and said, "it doesn't express anything about the implementation." 

So why do myself and others love Ruby so much? I thought I'd explore this a bit.

## Fostering Programmer Happiness
First and foremost, Ruby is a language that strives to make programmers happy. This is an underrated value and one that often gets our community mocked by our peers within other communities. The language is meant be joyful to use. This is a value and an ethos that permeates the language, the ecosystem of gems, and the community. Everything else that Ruby is stems from this value.

When I write Ruby, I take so much joy out of the process. Even the bad parts. In the middle of a high stress incident, Ruby still sparks joy. In fact, the only time I don't enjoy Ruby is when I'm working on a piece of code that doesn't follow Ruby practices, patterns, and idioms. Which brings me to the next topic

## Expressiveness Encouraged
Ruby is probably the most expressive programming language on Earth. Between its metaprogramming features and cultural idioms, Ruby allows programmers to write code that clearly expresses its intent. Well written ruby code can often read like natural language. Features like predicate methods even give up punctuation. So you can easily write something like:

```ruby
if @subscription.supports_feature?(:feature_a)
  ...
else
  ...
end
```

This is often why ruby programmers don't like comments. In most cases, the language makes comments unnecessary. And when you do need them, it's often when you're doing a very specific  or obscure thing that requires context to understand. It's clear from the code why you need a comment in that case.

Tied into this is the ecosystems embrace of domain specific languages(DSLs), which give us the power to write incredibly expressive code that reads like what it's doing. For example, RSpec's DSL reads exactly like how a person might talk about what they want to test:

```ruby
RSpec.describe Ticket do
  context 'when the ticket is closed' do
    it 'emails the requestor with a confirmation' do
      ...
	end
  end
end
```

~~Methods~~, sorry "approaches," like this have made Ruby so joyful to use. 

## A Language Made Just For Me
Many rubyists, myself included, recount stories of how Ruby and Rails just fit their brain. I recently told this story on [Remote Ruby](https://www.remoteruby.com/2260490/14003706-unlocking-the-power-of-state-machines-in-code-development-with-elise-schaefer) about learning ruby. I said that when I was learning Ruby it felt like it was made just for me. I could guess method names and signatures and I would be right most of the time. When I was wrong, I could switch the order of arguments. This was so true that quickly I learned to just try something based on intuition before reading the docs. I know so many rubyists who have similar stories. 

Feeling recognition in the language you're programming is so powerful.

## Community And Values
It's so hard to talk about Ruby without talking about how the community shapes what Ruby is and how it feels to use the language. Ruby is a great language with so many benefits. There's lots of features and values built into its core that make it a joy to use. 

But as Kent Beck said at RailsConf in 2020, "Software design is an exercise in human relationships." He was talking about how we think about designing software. But I think this quote applies to our community and our values as well. If you've followed this blog or listened to The Ruby on Rails Podcast since I took over, you know that community is a big part of my value system. That value is shared by other rubyists.

I attended RubyConf in San Diego this year. These conferences are always a blast. It feels like I'm coming home to see old friends. The community building that happens at these conferences makes lifelong colleagues and friends. There a spirit of learning, and cooperation. We want to help each other, teach each other, learn from each other. The Ruby community is an incredible group of people of welcoming, kind, and supportive peers. Without the community, Ruby couldn't be what it is. 

There's a lot of reasons to like ruby. And there's so many things that rubyists love. I haven't covered everything. But Ruby's primary features are joy and community. That's hard to beat.

Do you love Ruby? [Tell me what you love about it](mailto:elise.shaffer+blog@hey.com)
