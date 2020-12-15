class AddAltGridLayoutToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :alt_grid_layout, :boolean
  end
end
