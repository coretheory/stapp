class AddThreeGridLayoutToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :three_grid_layout, :boolean
  end
end
