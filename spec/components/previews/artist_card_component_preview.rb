# spec/components/previews/artist_card_component_preview.rb
class ArtistCardComponentPreview < ViewComponent::Preview
  def default
    artist = Artist.new(name: 'Example Artist', social_icons: ['twitter', 'facebook'])
    render(ArtistCardComponent.new(artist: artist))
  end
end
