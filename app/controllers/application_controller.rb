class ApplicationController < ActionController::Base
  def index
    @artists = Artist.all
  end
end
