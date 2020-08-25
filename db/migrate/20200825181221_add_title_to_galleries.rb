class AddTitleToGalleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :title, :string
    add_index :galleries, :title, unique: true
  end
end
