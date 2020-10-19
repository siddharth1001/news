Rails.application.routes.draw do
  get 'home/index'

  namespace :api do

    ["v1"].each do |version|
      namespace version do
        resources :users
        get 'test/index'
      end
    end

    ["v2"].each do |version|
      namespace version do
        get 'test/index'
      end
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
