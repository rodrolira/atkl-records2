# frozen_string_literal: true

class LogoComponent < ViewComponent::Base
    def initialize(alt:, class_name:)
      @alt = alt
      @class_name = class_name
    end

end
