class AddBiographyToArtists < ActiveRecord::Migration[7.1]
  def change
    add_column :artists, :biography, :text
  end
end
