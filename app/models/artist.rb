# app/models/artist.rb
class Artist < ApplicationRecord
  validates :name, presence: true
  validates :profession, presence: true
end
