class AddOneGridLayoutToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :one_grid_layout, :boolean
  end
end
