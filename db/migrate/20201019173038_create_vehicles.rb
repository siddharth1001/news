class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :owner_account_id
      t.string :branch_id
      t.string :type
      t.string :status
      # check if need polymorphic relationship?
      t.string :license_number
      t.string :model
      t.string :barcode
      t.integer :vehicle_details_id
      t.datetime :manufacturing_year
      t.string :company_name
      t.boolean :is_available,        :default => true

      t.timestamps
    end
  end
end
