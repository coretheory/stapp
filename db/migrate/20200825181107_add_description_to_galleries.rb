class AddDescriptionToGalleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :description, :text
  end
end
