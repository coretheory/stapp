class AddYearToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :year, :string
  end
end
