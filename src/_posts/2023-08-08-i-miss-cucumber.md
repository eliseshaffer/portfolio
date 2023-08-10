---
layout: post
title: I Miss Cucumber
subtitle: ...and other gherkin style BDD tools
date: 2023-08-08
excerpt: 'I might be getting old. The other day, I was chatting with a coworker and waxing nostalgic about various tools and methods that I miss. The conversation had a whole "back in my day" vibe. Which, you know, I think I should just lean into at this point. Anyway, we started talking about Cucumber and made me a little sad.'
banner_image_url:
---

I might be getting old. The other day, I was chatting with a coworker and waxing nostalgic about various tools and methods that I miss. The conversation had a whole "back in my day" vibe. Which, you know, I think I should just lean into at this point. Anyway, we started talking about Cucumber and it made me a little sad that the community had moved on from it. 

Cucumber is a Behavior Driven Development framework that lets you write acceptance style tests in the form of a user story. You might write the following test for what happens when a user logs in:

```gherkin
Feature: Sign In
  Background:
    Given a user exists

  Scenario: a user signs in successfully
    When the user visits the sign in page
    And the user enters their username
    And the user enters their password
    And the user clicks submit
    Then the user is routed to the dashboard
```

Each step in that example would be defined like this:

```ruby
module SignInSteps
  step "a user exists" do
    @user = User.create(
      username: 'alice',
      password: 'password'
    )
  end

  step "the user enters their username" do
    fill_in 'Username', with: @user.username
  end
end
```

Cucumber has a few advantages. The syntax reads like a user story. It puts you in the mind of the user and that's a powerful framework to think in. This can help you codify your requirements in the same language as the customer who will use and talk about your product. 

Having that language helps you build a shared understanding of your software. What do we mean when we say "the user fills in their username?" Using a tool like cucumber, you can write that step in code, run it in a browser and make sure the whole team agrees that you accurately captured the behavior. 

So what happened to cucumber? 

Cucumber was sold in part based on its human readable nature. The promise was that lay people could write acceptance tests. You could give a product manager or a customer service representative a list of steps and they could assemble them, filling in steps for missing functionality that would then be fleshed out by developers. 

That didn't happen. Instead, developers wrote all the code. Since developers were used to writing and understanding code, the extra tooling to make BDD style frameworks possible seemed like unnecessary overhead. It was just as simple to write all the same acceptance style code without the fancy domain specific language. 

Cucumber is still around. It's still being worked on and developed. But, the industry has moved on. That makes me sad. I really do miss it. I think we gave up something great when we stopped using Cucumber. 

I miss how it forced me to think in real world terms. It forced me to put myself in the customer's shoes and write down how the system should work from their perspective. 

I miss how easy it was to write new acceptance tests. Over time, you build a library of steps and then composing new tests is like writing a story out of precomposed sentences. 
 
I think Cucumber sparks joy. At least it did for me. And I miss using it. 
