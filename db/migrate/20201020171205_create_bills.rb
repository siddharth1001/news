class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.integer :total_amount
      # will have many bill items

      t.timestamps
    end
  end
end
