class RemoveProjectCategoryFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :project_category, :string
  end
end
