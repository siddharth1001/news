class VehicleReservation < ApplicationRecord
  has_many :reservation_addons
  # TODO: add branch_id column as well

  validates_presence_of :vehicle_id

end
