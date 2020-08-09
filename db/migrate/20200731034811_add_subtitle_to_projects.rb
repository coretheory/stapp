class AddSubtitleToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :subtitle, :string
  end
end
