class RemoveDescriptionFromGalleries < ActiveRecord::Migration[6.0]
  def change
  	remove_column :galleries, :description
  end
end
