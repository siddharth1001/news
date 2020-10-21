class ReservationAddon < ApplicationRecord
  belongs_to :flavour, :polymorphic => true
  # 3 types of flavoues -> 1. Equipment, 2. Service, 3.RentalInsurance
end