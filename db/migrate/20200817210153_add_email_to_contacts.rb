class AddEmailToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :email, :string
    add_index :contacts, :email, unique: true
  end
end
