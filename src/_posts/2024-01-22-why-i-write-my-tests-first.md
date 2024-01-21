---
layout: post
title: Why I Write My Tests First
date: 2024-01-22
excerpt: "I am a pretty outspoken Test Driven Development advocate. I've recently appeared on a few podcasts talking about how I love TDD and why I think it's the best way to write software. Test driven development advocates not only believe that automated software testing is necessary, they believe that the best way to develop software is to start with the tests."
---

I am a pretty outspoken Test Driven Development advocate. I've recently appeared on a few podcasts talking about how I love TDD and why I think it's the best way to write software. Test driven development advocates not only believe that automated software testing is necessary, they believe that the best way to develop software is to *start* with the tests. When I advocate test driven development, I sometimes get some understandable pushback. When you are new to testing, it can be hard to imagine how you *could* start with the tests. But, after some practice, it becomes second nature and you reap huge benefits. 

I follow the test driven development workflow most of the time. The workflow goes like this: you write a failing test that should pass when you've completed work, then you run the test to see that it fails. After you see the failure, you write ***only the code that will fix the current failure or error.*** This is important. You aren't writing all the code to pass the test. You're writing only the code that moves you past the current error message. You repeat this step, working from error to error, until the test passes. Then with working code and a test for safety, you refactor and clean up the code while making sure the test still passes. 

This approach grants me so many advantages.

First, it ensures that my tests fail for the correct reasons. Sometimes a test could pass even if the code doesn't work. When this happens, I start to lose trust in the tests. If I write the test first, I see it fail appropriately. The process of TDD helps me gain confidence that the tests will catch me if I break something in the future. This is one of the biggest strengths of TDD and a big factor in why I love it so much. 

Second, test driven development makes sure that every line of code has a specific purpose. Because I'm only writing the code that I need to move past the current error, each line of code has earned its place. I know that everything in the codebase is necessary. I think many of us agree that less code is better. There's tons of memes about how satisfying it is to delete code. TDD lets me know that all that code has a purpose. 

The confidence means I can move more quickly. Because I know all the code is necessary and the tests fail appropriately, I can develop way more quickly. One of the biggest problems with big complex codebases is the need to hold the whole system in your head. When I know that I have comprehensive test coverage and I trust those tests, I can offload some of that mental work to the computer. I can start programming the software necessary for the current ticket. If I break anything, the test's I've written in the past will catch the breakage and surface it to me. 

A problem arises if I don't have enough tests to be able to do that. If only some cases are covered, then even with the tests, I need to think about all the edges and collaborations happening in the codebase. I almost dislike this more than having no tests. Either I don't trust the tests and do all the mental work anyway. Or I do trust the tests and get burned by a testing gap. 

Test driven development also helps guide my software design. Because the tests are written first, I can think about what the hypothetical API of the thing I'm building should be. In the end, I will end up with an API that makes more sense to the collaborate because I have lived in the  shoes of the collaborator. The test itself is a collaborator. 

That might be controversial. I know some people think that TDD actually damages the design of software. I strongly disagree. While TDD is not a panacea for poor code, it encourages writing good code. The best code bases I've worked in have been the ones where the team practiced test driven development. The worst have been the ones with tests that were written after the fact, in unreliable ways that damaged trust in them.

Test driven development leads to better on call shifts. When I write the test first, I know that I've covered all of the important code paths. This doesn't mean that I'll never have errors. But, I know that the things I care about work. Errors that do crop up will most likely not be catastrophic. This lessens the on call burden and reduces stress for the team. 

It helps me think about the boundaries of the problem. The discreet steps of TDD have conditioned my brain to be a little modal. When I'm in testing mode, I think about what the software has to do. While I work on writing one test, I might have a thought or insight about another test case. So I write that test. Or maybe I add an empty test that covers that case. In RSpec, skipped tests print a warning when you run the tests. I get a great reminder of the cases that I care about.

Test driven development is a huge part of my workflow. It has so many benefits. I tried to talk about the ones I find most useful. But, there are others. For example, TDD is the easiest way I've found to enter a flow state while coding. I really take a lot of pride from test driven development. It helps me write better code, more quickly, and with less stress.

Do you use test driven development? [Send me an email](mailto:elise.shaffer@hey.com) and tell me your test driven development experiences. 

