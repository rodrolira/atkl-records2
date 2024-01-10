# app/models/artist.rb
class Artist < ApplicationRecord
  validates :name, presence: true
  validates :profession, presence: true
  has_many :releases
  has_many :multimedia_items
  has_one_attached :profile_picture
  attr_accessor :biography


end
