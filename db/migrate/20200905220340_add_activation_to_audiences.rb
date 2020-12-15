class AddActivationToAudiences < ActiveRecord::Migration[6.0]
  def change
    add_column :audiences, :activation_digest, :string
    add_column :audiences, :activated, :boolean, default: false
    add_column :audiences, :activated_at, :datetime
  end
end
