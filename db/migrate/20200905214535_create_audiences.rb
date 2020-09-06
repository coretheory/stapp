class CreateAudiences < ActiveRecord::Migration[6.0]
  def change
    create_table :audiences do |t|
      t.string :email

      t.timestamps
    end
    add_index :audiences, :email, unique: true
  end
end
