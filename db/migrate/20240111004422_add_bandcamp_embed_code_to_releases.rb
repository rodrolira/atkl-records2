class AddBandcampEmbedCodeToReleases < ActiveRecord::Migration[7.1]
  def change
    add_column :releases, :bandcamp_embed_code, :text
  end
end
