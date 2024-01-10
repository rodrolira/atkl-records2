# app/components/artist_card_component.rb
class ArtistCardComponent < ViewComponent::Base
  def initialize(artist:)
    @artist = artist
  end
end
