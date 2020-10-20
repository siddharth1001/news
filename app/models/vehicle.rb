class Vehicle < ApplicationRecord
  # Single Table Inheritance -> This setup is great because any methods or validations in the Vehicle class are shared with each of its subclasses. 
  # We can add unique methods to any of the subclasses as needed. They are independent of each other and their behavior is not shared horizontally.
  # https://www.freecodecamp.org/news/single-table-inheritance-vs-polymorphic-associations-in-rails-af3a07a204f2/
  # STI is by default used in a table if the table has column named `type` 

  VEHICLE_TYPES_MAP = {
    :car => "Car",
    :van => "Van",
    :truck => "Truck",
    :motorbike => "Motorbike",
    :scooty => "Scooty"
  }.with_indifferent_access.freeze

  def wheels
    4
  end
end
