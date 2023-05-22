---
layout: post
title:  Thoughts On Javascript
date:   2018-02-11
excerpt: "I’ve seen several threads arguing over JavaScript recently, and it’s starting to get to me. Before I go into my personal feelings about Javascript, I feel compelled to say this: We’re stuck with JavaScript."
---

I’ve seen several threads arguing over JavaScript recently, and it’s starting to get to me. Before I go into my personal feelings about Javascript, I feel compelled to say this: We’re stuck with JavaScript.

JavaScript, whatever you may think of it, is here to stay. On the client side, it is the only language you can use. Even if you are compelled to use an abstraction language such as CoffeeScript or TypeScript, you cannot escape understanding what is happening underneath that abstraction. This is part of the reason I prefer straight JavaScript over those languages.

JavaScript is the language we have and it’s the one we are forced to use. Every argument about it should start from that premise. We should aim to make writing and managing JavaScript better and more fun.

Now that I got that out of the way, what do I think of JavaScript? I think it’s fine.

I will admit that five years ago, I wasn’t a fan of JavaScript. Ten years ago, I positively hated it. But the last few months, I’ve been playing around with VueJS, learning the features that have been introduced in the recent years, and I’m growing to like JavaScript. Part of that is Vue. It just feels natural to use. But, another part is that JavaScript keeps improving.

Over the last few years, JavaScript has evolved rapidly. This evolution has allowed us to write really slick web apps in plenty of environments.

The current paradigm of component frameworks, for example, changed how we think about building web applications. That’s a good thing. Components are easier to think about than partial html templates, crazy CSS selectors, and stand alone javascript. Testing these things is also easier in Vue/React than it would have been before component frameworks.

The rise of Electron, Nativescript, and React Native means that we get to reuse a lot of that front end work to build native applications quickly. In the case of Vue, you can pull all of the front end components into a Vue Plugin and use it in Electron and Nativescript with basically no modification. This means that rapid prototyping, and even start ups, can build, deploy, and test business assumptions with minimal effort.

JavaScript has problems. I still get frustrated by its tooling. I don’t like over-reliance on third party dependencies. The `node_modules` directory makes me hyperventilate. But, it is improving and there are ways to manage it’s pain points, for example:

1. Learn JavaScript. Buy a book and dig deep into JavaScript. There is a Doug Crockford quote that sticks with me: “JavaScript is the only programming language developers don’t think they have to learn before using.” I think that’s a big part of the reason people rail against it. Understanding its quirks and history can help alleviate frustration. I’ve found that my past hatred toward javascript is inversely correlated with how well I understood JavaScript.
2. Pick frameworks with big user bases and communities. You can trust Facebook to keep supporting React, Google to keep supporting Angular, and the Vue team to keep supporting Vue.
3. Pick a JavaScript style and stick to it. If you pick a style of JavaScript that you enjoy and agree with, it won’t be so painful to write. This extends to tooling, testing, etc.

These are only a few suggestions. There are others. JavaScript doesn’t have to be painful to write or use. Try to stick to the good parts.

JavaScript does have problems, but arguing over them on Hacker News is a waste of energy. There are plenty of things worth arguing over. What programming language is best simply isn’t one of these questions. Because here’s the thing: None of them are best.

It’s no secret that I love Ruby. Ruby is the first language I ever used that I felt was designed just for me. I know many programmers that hate Ruby. Just like I know programmers that feel the same way about Scala, Go, or Swift. We love the languages that we have fun writing. Some people have fun writing JavaScript. It’s okay to not like JavaScript. It’s okay to have criticisms of JavaScript. It’s not okay to be abusive about it.
