class AddNullConstraintToProjects < ActiveRecord::Migration[6.0]
  def change
  	change_column_null :projects, :title, false
  	change_column_null :projects, :year, false
  	change_column_null :projects, :project_type, false
  end
end
