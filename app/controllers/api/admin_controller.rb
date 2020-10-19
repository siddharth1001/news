class Api::AdminController < ApplicationController
  before_action :is_admin?

  def add_branch
    branch, err = Api::AdminHelper.create_branch(permitted_branch_params)
    if err.present?
      response_data = {"Error": err}
    else
      response_data = branch.to_json
    end
    render json: response_data
  end

  def get_all_branches
    all_branches = Branch.all
    render json: all_branches
  end


  private 

  def is_admin?
    # current_account.is_admin
    true
  end

  def permitted_branch_params
    params.slice(:name, :address, :manager_account_id)
  end
end
