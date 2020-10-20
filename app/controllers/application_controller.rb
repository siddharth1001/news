class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }


  def current_account
    # hack
    Account.first
  end
end
