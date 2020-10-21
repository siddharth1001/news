class CreateVehicleReservation < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_reservations do |t|
      t.integer  :vehicle_id
      t.integer  :account_id
      t.datetime :start_date
      t.datetime :return_date
      t.datetime :due_date
      t.integer  :bill_id
      t.integer  :quoted_price
      t.integer  :pickup_address_id
      t.integer  :return_address_id

      t.timestamps
    end
  end
end
