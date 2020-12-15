class CreateContextualObjects < ActiveRecord::Migration[6.0]
  def change
    create_table :contextual_objects do |t|

      t.timestamps
    end
  end
end
