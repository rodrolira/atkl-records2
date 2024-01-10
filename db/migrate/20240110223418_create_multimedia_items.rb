class CreateMultimediaItems < ActiveRecord::Migration[7.1]
  def change
    create_table :multimedia_items do |t|
      t.string :title
      t.string :content_type
      t.string :link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
