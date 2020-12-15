class AddNullConstraintToGalleries < ActiveRecord::Migration[6.0]
  def change
  	change_column_null :galleries, :title, false
  end
end
