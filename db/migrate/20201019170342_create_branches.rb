class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :status
      t.integer :address_id
      t.string :manager_account_id
      t.datetime :started_at

      t.timestamps
    end
  end
end
