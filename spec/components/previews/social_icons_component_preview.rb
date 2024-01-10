# spec/components/previews/social_icons_component_preview.rb
class SocialIconsComponentPreview < ViewComponent::Preview
  def default
    render(SocialIconsComponent.new(icons: ['twitter', 'facebook', 'instagram']))
  end
end
