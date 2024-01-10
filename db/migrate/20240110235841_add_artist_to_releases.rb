class AddArtistToReleases < ActiveRecord::Migration[7.1]
  def change
    add_reference :releases, :artist, null: false, foreign_key: true
  end
end
