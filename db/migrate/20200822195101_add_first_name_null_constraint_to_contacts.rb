class AddFirstNameNullConstraintToContacts < ActiveRecord::Migration[6.0]
  def change
  	change_column_null :contacts, :first_name, false
  end
end
