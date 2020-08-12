class AddProductDesignToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :product_design, :boolean
  end
end
