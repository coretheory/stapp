class DropContextualObjectsTable < ActiveRecord::Migration[6.0]
  def change
  	drop_table :contextual_objects do |t|

      t.timestamps
    end
  end
end
