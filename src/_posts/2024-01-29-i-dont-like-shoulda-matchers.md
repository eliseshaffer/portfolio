---
layout: post
title: I Don't Like Shoulda Matchers
date: 2024-01-29
excerpt: "There's a lot of testing tools for Ruby on Rails. Ruby started life with a strong testing culture. The ecosystem is brimming with tools. But not all of those tools spark joy. I love a lot of them. I've written about my nostalgia for Cucumber. But one tool that always make me feel weird is Shoulda matchers."
---

There's a lot of testing tools for Ruby on Rails. Ruby started life with a strong testing culture. The ecosystem is brimming with tools. But not all of those tools spark joy. I love a lot of them. I've written about my [nostalgia for Cucumber](/2023/08/08/i-miss-cucumber/). But one tool that always makes me feel weird is Shoulda matchers. 

Shoulda matchers are a tool written by thoughtbot that gives you one line tests for various Rails features:
```ruby
RSpec.describe MenuItem, type: :model do
  describe 'associations' do
    it { should belong_to(:category).class_name('MenuCategory') }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:category_id) }
  end
end
```

This can seem like a great idea, but I can't help feel that this style of testing breaks the boundary for Rails. The example above tests that the MenuItem model has particular associations and validations. I firmly believe that tests should act as a collaborator with the code under test. None of the collaborating modules or classes cares that a `MenuItem`  `belongs_to` a category. The collaborator cares that when it calls `menu_item.category` it gets the appropriate `MenuCategory` record back. 

This kind of test isn't acting like a collaborator. It's acting like a developer.  A better test would be some thing like this:

```ruby
RSpec.describe MenuItem, type: :model do
  describe '#category' do
    it "returns a category record" do
      menu_item = menu_items(:split_pea)
      category = menu_categories(:soup)
      expect(menu_item.category).to eq category  
    end
  end
end
```

This example uses fixtures, but you could imagine using FactoryBot as well. This test is longer. But, it's much more specific and tests the expected return value of the association.

It could be more acceptable to use some of the controller matchers, but even there I would choose to write more coarse tests that act like a user. For example, the `set_flash` matcher will check that the flash contains a particular message. But, from the customer perspective that doesn't matter. What matters is that the flash is rendered on the page and is visible. 

Both of these examples feel a bit too clever to me. That's how all of the shoulda matchers feel. 

Write tests that act like real collaborators. Make them use the same methods a real collaborator would and assert on the return value. For your models, call the association the way you would in a controller. For your views, assert that the proper text is rendered in a response.  It will give you a real test of what the code is supposed to do.

Do you use shoulda matchers? [Send me a email](mailto:elise.shaffer@hey.com) with your thoughts.
