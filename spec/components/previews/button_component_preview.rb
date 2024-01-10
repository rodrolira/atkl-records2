# spec/components/previews/button_component_preview.rb
class ButtonComponentPreview < ViewComponent::Preview
  def default
    render(ButtonComponent.new(type: "primary", text: "Click Me"))
  end
end
