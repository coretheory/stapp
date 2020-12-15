class RemoveActivationsFromAudiences < ActiveRecord::Migration[6.0]
  def change
  	change_table :audiences do |t|
  		t.remove :activation_digest
  		t.remove :activated
  		t.remove :activated_at
    end
  end
end
