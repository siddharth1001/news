module Api::AdminHelper

  def self.create_branch(params)
    branch = nil
    err = nil
    if params[:address].blank?
      return branch, "Branch address required"
    end

    branch = nil

    begin
      ActiveRecord::Base.transaction do

        addr_params = params[:address]
        addr = Address.new(
          city: addr_params[:city],
          pin: addr_params[:pin],
          state: addr_params[:state],
          full_address: addr_params[:full_address]
        )
        byebug

        addr.save!
  
  
        branch = Branch.new(
          name:               params[:name],
          manager_account_id: params[:manager_account_id],
          address_id:         addr.id
        )
        branch.save!
      end
    rescue => e
      err = e.message
      Rails.logger.error("Error in adding branch #{err}")
    end
    
    return branch, err
  end
end