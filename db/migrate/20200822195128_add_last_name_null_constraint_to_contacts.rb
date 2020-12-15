class AddLastNameNullConstraintToContacts < ActiveRecord::Migration[6.0]
  def change
  	change_column_null :contacts, :last_name, false
  end
end
