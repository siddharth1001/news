class AddUserDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo_url, :text
    add_column :users, :identification_type, :string # pan, aadhar, driving licence
    add_column :users, :identification_id, :integer
    add_column :users, :driving_licence, :string
    add_column :users, :driving_licence_expiry, :datetime # Not to filled by user, done via an api to fetch this detail
    # add_column :users, :address_id, :integer
  end
end
