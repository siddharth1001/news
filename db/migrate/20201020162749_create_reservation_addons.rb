class CreateReservationAddons < ActiveRecord::Migration[5.2]
  def change
    create_table :reservation_addons do |t|
      t.integer  :vehicle_reservation_id
      t.integer  :flavour_id
      t.string   :flavour_type
      t.integer  :count

      t.timestamps
    end
  end
end
