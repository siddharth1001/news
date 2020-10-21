class CreateRentalInsurances < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_insurances do |t|
      t.string   :name
      t.string   :status
      t.string   :type
      t.string   :base_price

      t.timestamps
    end
  end
end
