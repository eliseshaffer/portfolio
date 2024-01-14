---
layout: post
title: On Code Quality
date: 2024-01-15
excerpt: There's a quote that's been nagging at me for the last month. I recently watched a talk from Allen Holub. In it he says, "You can't be agile when you're fighting your code." That line has been stuck on repeat inside my brain ever since. 
---

There's a quote that's been nagging at me for the last month. I recently watched a talk from Allen Holub. In it, he says, "You can't be agile when you're fighting your code." That line has been stuck on repeat inside my brain ever since. 

I've worked at many companies in my fourteen years of being a software engineer. I've seen quite a few codebases. Some of them were really easy to work in and others were quite challenging. The easiest codebases to work in were the ones that were well factored, using consistent patterns, with clear responsibilities and architectures, and comprehensive testing. The ones that were difficult to work in were the ones with tightly coupled code, models that made excessive use of callbacks, and dozens of layers of indirection with no testing or testing that was unreliable. 

Good quality code allows you to move so quickly. It's easy to change, extend, and refactor. You can look at its structure and syntax and easily understand it. Poor code quality is complicated. It's a tangled mess of interlocking method calls, objects, and  concepts. It's hard to read and reason about. Moreover, it's probably untested because poorly written code is hard to test (This is one of the reasons that TDD advocates want to write the test first), making it less reliable. 

Poorly written code makes programmers anxious and leads to longer development times. When you have a bug, it will be more difficult to find and fix. When a new feature is requested, it will be more difficult to integrate with the poor codebase. When something goes wrong, it will be more stressful on the team. So why do we let our codebases get so ***bad?*** Why do we write poor quality code?

In my experience, it has many causes(most things do). Teams are under a lot of pressure. Tight deadlines lead to cut corners. Poor code leads to more poor code. If you don't have time to clean up the existing code, it's hard to write good new code that interacts with it. Micromanagement can hurt your motivation. If you aren't allowed to clean things up, or if you get significant pushback when you do, then you're less incentivized to write good code. Poor test coverage increases this problem. Tests are a safety net. If you aren't automating them, then that creates a larger manual testing burden when you need to refactor or clean code up. A lower appetite for experimentation means that if the first thing you try solves the problem, but in a clunky way, you're stuck with it. 

All of these issues impede our ability to write good quality code. 

Well written code is a superpower. Code that is well factored has so many advantages. It reduces your stress. It makes your software predictable. You're less likely to have unforeseen errors. When you do, they'll likely be easy to fix. On call shifts and incidents will be less frequent and easier to manage when they do emerge. New features are easier and faster to develop. 

A venture capital consultant once told me that code quality didn't matter because you could always pay someone to deal with it. Or, you'd sell your company and it wouldn't be your problem anymore. That felt so short sighted to me. What if you didn't sell your company? What if the quality problems led to so many defects thats customer left before anyone was willing to buy your company? 

It's tempting to just push something out as fast as possible without regard to code quality. It's tempting to think that it's removed from the customer. Or that it doesn't matter. Or that it will be someone else's problem. But everything the customer experiences is downstream from how well we write code. We should take that seriously. In this way, writing code well is a customer concern.

As programmers we have to stand up for our craft. We need to make code quality a priority. We need to push back against the idea that code quality doesn't matter. We need to stop cutting corners and mend the corners we've already cut. If we can't move the quality needle in our current teams, we need to find teams where we can.

Well written code will make you love your job. Poorly written code will make you hate it. 

I want to always get better at software development. I want the code I write today to be better than the code I wrote yesterday and tomorrow's code to better than today's. Well written code helps me get better. When I was a child, I did martial arts. My instructor had a saying, "Practice doesn't make perfect. Perfect practice makes perfect." There's no such thing as perfect software, but that doesn't mean we should stop caring about doing the best work we can. When code is well written, we all get better. It frees our minds from stress and lets us experiment more on solutions. That makes us better developers.

If I can't write good code, either because it's hard within the current codebase, or because I'm not given the time or freedom, I am not getting better at my craft, I'm becoming stagnant.

Code quality is one of my strong values. Well written code sparks joy, reduces stress, and improves productivity. Allen Holub made a quippy remark about code quality. And we should all take it to heart. 
