# frozen_string_literal: true

# Renders a single job
class Job < Bridgetown::Component
  def initialize(resource:)
    @resource = resource
    super()
  end

  private

  attr_reader :resource

  def company
    resource.data.company
  end

  def title
    resource.data.title
  end

  def tenure
    "#{resource.data.start_date.strftime('%b %Y')} - #{resource.data.end_date&.strftime('%b %Y') || 'Present'}"
  end

  def responsibilities
    resource.content
  end
end
