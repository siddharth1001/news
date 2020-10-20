class Account < ApplicationRecord
  # :user_id, :status, :is_admin
  # user is a Person
  belongs_to :user

  ACCOUNT_STATUS_MAP = {
    :active => "ACTIVE",
    :closed => "CLOSED",
    :blacklisted => "BLACKLISTED"
  }.with_indifferent_access.freeze
  
  before_validation :set_defaults, :on => :create

  private

  def set_defaults
    self.is_admin ||= false
    self.status   ||= ACCOUNT_STATUS_MAP[:active]
  end

end
