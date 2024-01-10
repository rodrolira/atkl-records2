# spec/models/artist_spec.rb
require "rails_helper"

RSpec.describe Artist, type: :model do
  it "is valid with valid attributes" do
    artist = Artist.new(name: "Example Artist", profession: "Musician")
    expect(artist).to be_valid
  end

  it "is not valid without a name" do
    artist = Artist.new(name: nil, profession: "Musician")
    expect(artist).not_to be_valid
  end

  it "is not valid without a profession" do
    artist = Artist.new(name: "Example Artist", profession: nil)
    expect(artist).not_to be_valid
  end

  it "is valid with both name and profession" do
    artist = Artist.new(name: "Example Artist", profession: "Musician")
    expect(artist).to be_valid
  end
end
