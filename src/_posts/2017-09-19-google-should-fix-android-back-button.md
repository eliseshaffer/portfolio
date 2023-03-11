---
layout: post
title:  "Google Should Fix Android’s Back Button"
date:   2017-09-19 
---

Now that Google has fixed the location of Android’s battery percentage indicator(a long time pet peeve of mine), it’s time for them to tackle the biggest remaining user interface problem: the back button.

Android’s back button is pretty confusing. After years of using web browsers, you might think that “back” is a simple direction. On Android, you’d be wrong. Depending on the context, the back button will do one of three things:

1. Take you back to your previous screen( the obvious and expected result)
2. Take you up in navigation within your current app(even if that’s not your previous screen)
3. Take you to the home screen(again, even if it’s not your previous screen)

This is very confusing. It’s a small design problem that you may not have noticed and there is an argument that I’m being nitpicky. But, design is in the details.

In the latter two cases, it isn’t obvious to the user that tapping the back button will result the way it does. For example, imagine you’re reading an article and tap on a link to a Tweet. From the Tweet view, the back button will take you, not to the article you were just reading, but to the main Twitter screen. In this case “Back” doesn’t mean back, it means up. But there is no indication to the user that it means up. That’s a design problem.

In the third case above, you might expect this to be fine when you were on the home screen. But the main navigation includes a home button. Have you ever tapped the back button, and expected to go to the home screen?
 
I haven’t. This scenario also rears its head when using the multitasking button. If you are in one app, say Evernote, and use multitasking to switch to Inbox, the back button takes you to the home screen, not Evernote(the likeliest intended action).

It is easy to call these complaints nit-picky. But good software is designed to do the user’s expected action. The inputs that cause scenarios two and three above are so obscure, they can’t reasonably be considered the expected actions.

Google should remove these scenarios and make the back button only take the user to the previous screen, wherever that screen may be. The option to override this functionality should be removed from the API, and developers should be forced to design around the new constraint.

There are other design problems on Android, but the back button is the most universal. It affects every Android phone. To say nothing about how the relieved dissonance will improve users’ experience with Android phones.