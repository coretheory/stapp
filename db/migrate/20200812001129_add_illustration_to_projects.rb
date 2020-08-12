class AddIllustrationToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :illustration, :boolean
  end
end
