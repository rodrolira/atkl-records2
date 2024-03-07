# frozen_string_literal: true

# Represents a component for displaying an artist card.
class ArtistCardComponent < ViewComponent::Base
  def initialize(artist:)
    super
    @artist = artist
  end
end
