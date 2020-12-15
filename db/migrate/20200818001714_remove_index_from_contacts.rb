class RemoveIndexFromContacts < ActiveRecord::Migration[6.0]
  def change
    remove_index :contacts, :first_name
    remove_index :contacts, :last_name
    remove_index :contacts, :email
  end
end
