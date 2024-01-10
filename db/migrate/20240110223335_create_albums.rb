class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.references :release, null: false, foreign_key: true

      t.timestamps
    end
  end
end
