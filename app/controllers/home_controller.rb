class HomeController < ApplicationController
  def index
    @artists = Artist.all
    @releases = Release.all
  end
end
