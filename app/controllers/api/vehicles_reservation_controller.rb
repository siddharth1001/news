class Api::VehiclesReservationController < ApplicationController
require 'booking_service'

  def reserve
    response_data = {}
    params[:current_account_id] = current_account.id

    begin
      r = BookingService.new(params)
      response_data, err = r.book_vehicle()
      if err.present?
        response_data[:message] = err
      end
    rescue => e
      puts "#{e.message}\n #{e.backtrace[0..10].join("\n")}"
      Rails.logger.error(e.message + "\n #{e.backtrace[0..10].join("\n")}")
      response_data = {
        message: "Error !!!"
      }
    end
    
    render json: response_data
  end
end
