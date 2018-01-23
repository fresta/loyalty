class AddAccountHolderIdToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :account_holder_id, :integer
  end
end
