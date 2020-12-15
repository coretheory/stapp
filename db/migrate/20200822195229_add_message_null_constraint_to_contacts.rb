class AddMessageNullConstraintToContacts < ActiveRecord::Migration[6.0]
  def change
  	change_column_null :contacts, :message, false
  end
end
