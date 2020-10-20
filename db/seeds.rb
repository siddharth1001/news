# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.find_by_email("siddharth.rawat1001@gmail.com")

if user1.blank?
  User.create!(
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
