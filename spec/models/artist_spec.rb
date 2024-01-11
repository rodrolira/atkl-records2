# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      artist = FactoryBot.build(:artist)
      expect(artist).to be_valid
    end

    it 'is not valid without a name' do
      artist = build(:artist, name: nil)

      expect(artist).to_not be_valid
    end

    it 'is not valid without a profession' do
      artist = build(:artist, profession: nil)

      expect(artist).to_not be_valid
    end
  end
end
