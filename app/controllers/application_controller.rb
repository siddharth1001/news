class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }


  def current_account
    # hack
    Account.first
  end

  # not used currently. Idea is that all controllers should adhere to a base response so that api responses are consistent
  def base_response(custom_response={})
    resp = {
      message: nil
    }
    resp.merge!(custom_response)
    status = 200
    [resp, status]
  end
end
