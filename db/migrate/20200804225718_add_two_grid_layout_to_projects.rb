class AddTwoGridLayoutToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :two_grid_layout, :boolean
  end
end
