---
layout: post
title: Dotbot Is Really Nice
date: 2023-08-22
excerpt: "While making a series of changes to my dotfiles this weekend, I decided to retire my aging install scripts in favor of using a ready made dotfiles manager. I chose to use Dotbot. Reader, let me tell you: Dotbot is really nice! Dotbot is a little bit like ansible, but way lighter weight. It uses a YAML file to configure how your dotfiles should be linked in your home folder."
banner_image_url:
---

I LOVE looking at other people's dotfiles. There's something great about looking at how someone has set up their development environment, taking inspiration from them and learning new things. For example, I recently learned that in Neovim there's a setting for using the system clipboard for yank and paste. I've been using a separate keymap for interacting with the system clipboard for years. I enabled this setting and it's amazing. 

I also love tinkering with my own [dotfiles](https://github.com/eliseshaffer/dotfiles). Every so often I'll look over things and add some conveniences like new aliases, or keymaps for Neovim. I've also created functions to make certain things easier(like automatically `cd`-ing into a git repo after cloning it). 

While making a series of changes to my dotfiles this weekend, I decided to retire my aging install scripts in favor of using a ready made dotfiles manager. I chose to use [Dotbot](https://github.com/anishathalye/dotbot#getting-started). Reader, let me tell you: *Dotbot is really nice*!

Dotbot is a little bit like ansible, but way lighter weight. It uses a YAML file to configure how your dotfiles should be linked in your home folder.

You install in into your dotfiles repo as a git submodule:
```shell
git submodule add https://github.com/anishathalye/dotbot
git config -f .gitmodules submodule.dotbot.ignore dirty
```

And copy the install script into your dotfiles root folder:
```shell
cp dotbot/tools/git-submodule/install .
touch install.conf.yaml
```

Since everything is configured using a YAML file, it makes understanding all your linked files really simple. For example, this is one of my configuration files:

```yaml
- defaults:
    link:
        relink: true

- clean: ['~']

- link:
    ~/.aliases: aliases
    ~/.config/nvim: nvim
    ~/.gitignore_global: gitignore_global
    ~/.nvmrc: nvmrc
    ~/.ruby-version: ruby-version
    ~/.zsh_functions: zsh_functions
    ~/.zshenv: zshenv
    ~/.zshrc: zshrc
```

The `link` section sets up symlinks to various files and folders. The key the target location and the value is where the link points to. 

In contrast my custom install script had a function that looped over the files in my repo and symlinked them into my home folder. Over time, I'd added exceptions for files I didn't want to symlink. It got very messy. The configuration above is pretty easy to understand and reads really well.

I'm also using a plugin called [dotbot-brew](https://github.com/eliseshaffer/dotbot-brew) that handles Homebrew packages as part of the Dotbot configuration. This is what my configuration for Homebrew looks like:

```yaml
- install-brew: true

- tap:
    - homebrew/cask-fonts

- brew: 
    - neovim

- cask:
    - font-fira-code-nerd-font

- brewfile:
    - brew/home.brewfile
```

I set up my taps, packages and the brewfile from my previous dotfiles setup. This lets me have a single command to install all the packages I need. 

So far, everything is working really well. I like Dotbot. It's really simple to set up and it just works the way I expect. Sometimes you have to discard your custom stuff and use something off the shelf. I'm glad I could do that for my dotfiles setup.
