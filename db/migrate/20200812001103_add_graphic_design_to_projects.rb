class AddGraphicDesignToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :graphic_design, :boolean
  end
end
