class AddNamesToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :first_name, :string
    add_index :contacts, :first_name, unique: true
    add_column :contacts, :last_name, :string
    add_index :contacts, :last_name, unique: true
  end
end
