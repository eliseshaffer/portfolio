# frozen_string_literal: true

# Renders a post in the index view
class Post < Bridgetown::Component
  def initialize(post:)
    @post = post
    super()
  end

  private

  attr_reader :post

  def path
    post.relative_url
  end

  def title
    post.data.title
  end

  def published_on
    post.data.date.strftime('%b %-d, %Y')
  end
end
