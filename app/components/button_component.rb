# app/components/button_component.rb
class ButtonComponent < ViewComponent::Base
  def initialize(type:, text:)
    @type = type
    @text = text
  end
end
