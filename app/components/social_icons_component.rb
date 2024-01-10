# app/components/social_icons_component.rb
class SocialIconsComponent < ViewComponent::Base
  def initialize(icons:)
    @icons = icons
  end
end
