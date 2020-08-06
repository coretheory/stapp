class AddThesisGridLayoutToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :thesis_grid_layout, :boolean
  end
end
