# app/models/release.rb
class Release < ApplicationRecord
  # Asumiendo que tienes un campo adicional en tu modelo Release llamado 'description'
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :artist
  has_many :tracks

  has_one_attached :cover_image

  def display_artist_name
    artist&.name || 'Unknown Artist'
  end
end
