class AddCompanyToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :company, :string
  end
end
