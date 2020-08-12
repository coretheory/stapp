class AddArchitecturalDesignToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :architectural_design, :boolean
  end
end
