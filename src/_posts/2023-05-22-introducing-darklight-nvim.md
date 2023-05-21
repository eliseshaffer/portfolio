---
layout: post
title: Introducing Darklight.nvim
date: 2023-05-22
---

I made my first lua plugin for Neovim! It's called [Darklight.nvim](https://github.com/eliseshaffer/darklight.nvim) and it makes it super simple to switch between dark mode and light mode colorschemes in Neovim.

About a year ago, I switched my whole Neovim setup to Lua and stopped sharing the same configuration with Vim. This was such a breath of fresh air. Lua is a fun little scripting language and it made configuring Neovim a delight. But I haven't created any plugins with it until now. 

Darklight is an extraction of some setup that I'd had in my own Neovim config for a while. When a friend asked me how I'd done the color switching, I decided to extract the relevant code into a plugin and add some configuration around it. 

The bulk of the work in making it a plugin was setting up the Config object. There was some validation that was necessary as well as figuring out how to gracefully fallback in situations where the configuration was invalid. I added a Lua table for the `Config` object and made a function that validated the passed in configuration.

With that, Darklight was born.

Darklight has three different modes, `background`, `colorscheme`, and `custom`. Background is the simplest mode. In this mode, Darklight will chang the background setting in vim between "dark" and "light." Because many themes already support light and dark modes, this is the simplest way to use Darklight. 

In `colorscheme` mode, Darklight will switch between two completely different colorschemes. And in `custom` mode, you can provide callbacks that will let you completely control the switching behavior. You can learn more [on GitHub](https://github.com/eliseshaffer/darklight.nvim)

This was a fun little project and I'm happy to share this with the Neovim community. I have a few ideas for others features that I want to add, but the core pieces of functionality are pretty solid. After this experience, I look forward to making other plugins in the future.

