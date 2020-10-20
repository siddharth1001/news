# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.find_by_email("siddharth.rawat1001@gmail.com")

if user1.blank?
  user1 = User.create!(
    "name": "Siddharth Rawat",
    "email": "siddharth.rawat1001@gmail.com",
    "photo_url": "",
    "identification_type": "AADHAR",
    "identification_id": 1,
    "driving_licence": "XCV-123-IUO1"
  )
end

account1 = Account.find_by_user_id(user1.id)

if account1.blank?
  account1 = Account.create!(
    user_id: user1.id,
    is_admin: true,
    auth_token: "aBY1lmtCCBqaYIhpaJdDtyvUKOtjrb0",
    status: Account::ACCOUNT_STATUS_MAP[:active]
  )
end

# owner who have lent a car
owner_user1 = User.find_by_email("owner1@gmail.com")
if owner_user1.blank?
  owner_user1 = User.create!(
    "name": "Siddharth Rawat",
    "email": "owner1@gmail.com",
    "photo_url": "",
    "identification_type": "AADHAR",
    "identification_id": 2,
    "driving_licence": "XCV-123-IUO1"
  )
end

owner1_cars = Vehicle.where(owner_account_id: owner_user1.id, type: Vehicle::VEHICLE_TYPES_MAP[:car], license_number: 123456)

if owner1_cars.blank?
  3.times do |i|
    Vehicle.create!(
      owner_account_id: owner_user1.id, 
      type: Vehicle::VEHICLE_TYPES_MAP[:car], 
      license_number: "123000#{i}".to_i,
      barcode: SecureRandom.hex, # this should be id for a column
      is_available: true,
      model: "i#{i}0",
      company_name: "Honda"
    )
  end
end