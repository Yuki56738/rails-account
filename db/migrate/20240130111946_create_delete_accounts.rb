class CreateDeleteAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :delete_accounts do |t|
      t.string :user

      t.timestamps
    end
  end
end
