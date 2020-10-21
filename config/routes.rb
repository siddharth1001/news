Rails.application.routes.draw do
  get 'home/index'

  namespace :api do

    ["v1"].each do |version|
      namespace version do
        resources :users
        resources :accounts
        resources :vehicles
        post "add_branch" => 'admin#add_branch'
        get "branches" => 'admin#get_all_branches'

        post "reserve/:id" => 'vehicles#reserve'
        post "show/:id" => 'vehicles#show'

      end
    end

    ["v2"].each do |version|
      namespace version do
      #  add version v2 apis here
      end
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
