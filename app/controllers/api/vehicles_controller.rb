class Api::VehiclesController < ApplicationController
  
  def search
    # Real world search will be on DB's like Elastic search
    model = params[:model]
    company_name = params[:company_name]
    vehicles = []
    if model && company_name
      vehicles = Vehicle.where("company_name = ? and model = ?", company_name, model)
    elsif company_name
      vehicles = Vehicle.where("company_name = ?", company_name)
    end
    render json: vehicles.to_json
  end
end
