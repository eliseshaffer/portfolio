---
layout: post
title: I Switched Back To Terminal Vim From VS Code
date: 2020-05-11T20:13:43.322Z
---
I'll warn you up front the reason I've switched is superficial and unsatisfying. 

In the summer of 2013, I joined 4moms, a juvenile product and technology company, as a software engineer working on business support software. The bulk of the team was using Vim, while I had been using Sublime Text for many years. 4moms was a heavy pairing company. There were big pairing stations set up and you'd work with another engineer. The difference in tools made it hard to work because we weren't working in a common environment. Eventually, I decided to learn vim in order to make it easier to work with my colleagues. 

That's how I became a Vim user. At first, I used the 4moms Vim setup with their prescribed plugins and keybindings. But after about a year, I spent a weekend throwing out their configuration and creating my own from scratch. I used vim for the next 5 years. Then, I joined a team that would make Vim painful to use. 

It was the largest codebase I'd ever worked on, with several multi-thousand line files. Vim would struggle to scroll or search through these files, even on a top of the line MacBook Pro. The pain of scrolling and then seeing Vim just scroll for several seconds before stopping way after the line I needed became so bad that I looked for alternatives and landed on Visual Studio Code. 

I liked Visual Studio Code at first. It solves the biggest problem I had with Vim and using a Vim emulation mode, I got my familiar keybindings. There was also a side benefit that the syntax highlighting for Vue Single File components was way nicer than in Vim. 

But over the past couple years, I've found myself getting a little annoyed at some pretty superficial things in VS Code.  My favorite feature of Vim is the way it handles splits and tabs. In Vim, splits are ***inside*** tabs. This means that in rails project, for example, I can have the test and implementation files in vertical splits. Then, tabbing through tabs cycles between tests and implementations for the various classes I have open.  

The way VS Code handles open files and tabs is just like many other text editors. It creates some columns and then tabs populate those columns. So when you need to switch between domains, you have to switch both columns. You can see what I'm talking about below:

![vim switches two files at a time in a rails project while VS Code requires you to switch each file individually](/images/2020-05-11-tabswitching.gif)

Vim also doesn't show every buffer you have open in tabs. When you switch files, the default is to open that file in the current split. The file is still open in memory and showing all your buffers will show you the files, but having a clean view of what you're looking at is helpful. Recently, I've found myself having to close all my tabs and start over a lot with VS Code, simply because my tabs are way too cluttered to see what's going on. 

Old habits die hard and I've found myself really missing Vim's user experience. It just feels like a better code editor. My configuration includes a some plugins and mappings that give me a much better development experience. I might blog about my vim setup in the future, but I'm still updating some of the plugins and adapting to my old setup. I've also considered using Neovim to help with large files if I run into problems. 

I like Vim a lot and if the performance on large files wasn't so bad, I may never have switched away. We'll see if I have similar problems this time around. 

Stay safe and healthy out there!
