class BookingService

  def initialize(params={})
    @params = params
    @vehicle = Vehicle.find_by_id(params[:id])

    if @vehicle.blank?
      raise MissingVehicle.new("Vehicle with ID #{params[:id]} is not present.")
    end

    @response = {
      message: "Booking Failed"
    }
  end

  def book_vehicle()
    err = nil
    if !@vehicle.is_available_for_booking?
      return @response, "Vehicle not available for booking"
    end

    vr = VehicleReservation.new(
      vehicle_id: @vehicle.id,
      account_id: @params[:current_account_id],
      start_date:  @params[:start_date] || DateTime.now(), 
      return_date:  @params[:return_date] || (Time.now + 24.hours).to_datetime, 
      pickup_address_id: 1,
      return_address_id: 1
    )
    begin
      ActiveRecord::Base.transaction do
        vr.save!
        @vehicle.is_available = false
        @vehicle.save!
        @response[:vehicle_details] = @vehicle.booking_attributes
        @response[:message] = "Booking Successful."
      end
    rescue => e
      Rails.logger.error(e.message)
      err = vr.errors.full_messages
    end
    [@response, err]
  end

end