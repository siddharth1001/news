class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string  :city
      t.integer :pin
      t.string  :state
      t.text    :full_address

      t.timestamps
    end
  end
end
