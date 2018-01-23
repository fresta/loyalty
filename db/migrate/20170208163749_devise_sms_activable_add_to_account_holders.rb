class DeviseSmsActivableAddToAccountHolders < ActiveRecord::Migration[5.1]
  def self.up
    change_table :account_holders do |t|
      t.string   :phone
      t.string   :sms_confirmation_token, :limit => 5
      t.datetime :confirmation_sms_sent_at
      t.datetime :sms_confirmed_at
      t.index    :sms_confirmation_token # for sms_activable
    end
  end
  
  def self.down
    remove_column :account_holders, :sms_confirmation_token
    remove_column :account_holders, :sms_confirmed_at
    remove_column :account_holders, :confirmation_sms_sent_at
    remove_column :account_holders, :phone
  end
end
