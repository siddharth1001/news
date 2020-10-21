class CreateEquipment < ActiveRecord::Migration[5.2]
  # Equipment can be lent
  def change
    create_table :equipment do |t|
      t.string   :name
      t.string   :status
      t.integer  :price_per_hour
      t.string   :company_name
      t.datetime :purchased_date
      t.integer  :owner_account_id

      t.timestamps
    end
  end
end
