# frozen_string_literal: true

class CaptionedFigure < Bridgetown::Component
  def initialize(url:, alt_text:, caption:)
    @url, @alt_text, @caption = url, alt_text, caption
    super()
  end

  private

  attr_reader :url, :alt_text, :caption
end
