# RentalCars : A Car Rental System (WIP - Raise pull-request to contribute)

## Versions
Ruby  : 2.5.5
Rails : 5.2.4

## Requirements
1. Book a vehicle (with addons if required)
2. Cancel a booking
3. Complete a booking by returning the vehicle and paying the amout
4. Extend a booking
5. Admin can add a new branch and vehicles
6. Vehicles can be borrowed from some users so they may have owner_account_id as well
7. Fine is levied if booking surpasses the due date.
8. Bill is generated on different parameters (addons, fine, etc.)
9. add more...


## Setting up local environment:
### Create DB:
```
./bootstrap.sh
```

### Seed database:
```
rails db:seed
```

## Fixtures usage for test env
```
rails db:fixtures:load RAILS_ENV=test
```