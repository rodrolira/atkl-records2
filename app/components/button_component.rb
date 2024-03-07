# app/components/button_component.rb
class ButtonComponent < ViewComponent::Base
  def initialize(type:, text:)
    super
    @type = type
    @text = text
  end

  def button_class
    "btn btn-#{@type}"
  end
end
