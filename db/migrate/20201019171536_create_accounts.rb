class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string  :status
      t.boolean :is_admin
      #payment and other details

      t.timestamps
      # add index later
    end
  end
end
