class AddCatalogueToReleases < ActiveRecord::Migration[7.1]
  def change
    add_column :releases, :catalogue, :string
  end
end
