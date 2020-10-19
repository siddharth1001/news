class Api::UsersController < ApplicationController
  def index
    response_data = {controller: "User123"}
    render json: response_data
  end
end
