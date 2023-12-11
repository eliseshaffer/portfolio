---
layout: post
title: The Technical Decisions Behind My Website Redesign
date: 2023-12-11
excerpt: Last week, I deployed a complete redesign of my personal website. I wrote briefly about the design decisions and iterations that went into the redesign. But, I also wanted to talk about the technical decisions of this redesign. 
---

Last week, I deployed a complete redesign of my personal website. I wrote briefly about the design decisions and iterations that went into the redesign. But, I also wanted to talk about the technical decisions of this redesign. 

I took this as an opportunity to explore some new technologies and methodologies in web development. I really enjoyed the process. I started this work by bringing all my dependencies up to date. Then I started switching various gems out. Let's talk about my tech stack:

## Bridgetown
My website is built using [Bridgetown](https://www.bridgetownrb.com/). Bridgetown is a static site generator written in Ruby. It started as a fork of Jekyll, but has since been updated with modern features and tools. I really enjoy it. It's really familiar if you are an experienced Ruby programmer. For this redesign, I started by bringing Bridgetown up to date with the latest version.

I changed some of the default configurations. I chose to switch from the default Liquid templates to Embedded Ruby(ERB). When I used Jekyll, I used Liquid templates extensively. But, one of the big decisions I made last year was to switch to ERB. I was already using ERB in Rails apps and i thought it made the switch between the two easier. 

## Vanilla CSS
For some time now, I've been wondering if the marginal utility of Sass is worth it. A lot of the features that made Sass(and SCSS) so great are now part of the CSS specification. And in a lot of cases, they're better natively. For example, One of the big features of Sass early on was support for variables. but Sass variables are procedural. They are calculated at compile time, which means they can't be changed or modified at runtime. 

In contrast, CSS custom properties are part of the standard. They can have different values at different scopes. They can be accessed and manipulated by Javascript in the browser and they are more declarative. They have so much more power than Sass variables. One of the big concerns with them used to be browser compatibility. But, all the big browsers have supported it for years now.

CSS Custom properties also make things like dark mode a cinch to implement. You can decide your palettes and switch them with a single CSS rule. After deploying the redesign, I decided to add dark mode and it was incredibly easy thanks to CSS custom properties. All I had to do was change the variable declarations within the scope of dark mode. 

Other feature, like nesting are also supported by CSS natively now. This one has less browser support, but since I'm using PostCSS for compilation, I can use it and then it will get compiled down to a format that is supported browsers. 

With all of this in mind, I decided to remove Sass from my personal website and use Vanilla CSS. This decision turned out to be great from both a dependency and developer experience perspective. 

## CUBE CSS and Open Props
When I start new projects, I like to pick something that I want to get better at. This time, it was CSS. There are so many methodologies for how CSS should be organized and written. From design methodologies like Block-Element-Modifier to full blown utility first frameworks. There's no shortage of ideas about how best to style HTML.

For my personal website, I chose to pair Andy Bell's [CUBE CSS methodoloy](https://cube.fyi/). with [Open Props](https://open-props.style/). 

CUBE CSS is a CSS methodology that aims to be progressive and scalable. It focuses on starting with good HTML styling. Then, it organizes the rest of your styles into Composition, Utilities, Blocks, and Exception. One of the big benefits of it is that you can write much less CSS. It sorta feels like getting the best of everyone's ideas. Starting with HTML styling is like starting with class-less CSS. It gives you a great starting point for your site. Then you layer on Composition. The composition is the set of styles that determine how content flows on the page. Bell even calls this section `.flow` in his examples. CUBE also advocates utilities. Utilities are one-off classes that do one thing really well. Blocks are what you think of when you think of the block in BEM. And then you have Exceptions. One thing I like about the exceptions of CUBE is that they use data attribute selectors, which facilitates the use of state machines in your CSS.

I coupled CUBE CSS with Open Props, a framework(might be a strong word) of custom properties with standardized colors, sizes, typography, animations, and much more. They fancy themselves a "sub-atomic" CSS framework, which I think is clever. Open Props dramatically sped up my development. It was also such a joy to use. I like the way the custom properties are defined. It's easy to use them in your styles.

These two things led me to write much less CSS in what I hope will be a more maintainable codebase.

## Joy
One of the biggest things I wanted with this redesign was to find joy in building my personal website. I picked things that were interesting to me, and also matched a lot of my web and software design philosophy. There's a lot of joy in this redesign. 

One of the biggest strengths of the Ruby community is that we strive for programmer happiness. It's an underrated value and one that often gets us mocked by our peers in other communities. This redesign was so much fun and I loved working on it. That's perhaps the most important choice I made for this project.

Have any questions or want to share your website design story? [Drop me a line](mailto:elise.shaffer+blog@hey.com)
