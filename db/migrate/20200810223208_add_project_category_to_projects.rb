class AddProjectCategoryToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :project_category, :string
  end
end
