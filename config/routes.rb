Rails.application.routes.draw do

  namespace :api do ## This tells the application where to look "app/controllers/api/v1"
    namespace :v1 do ## This tells the application where to look "app/controllers/api/v1"
      resources :transactions
      resources :accounts
    end 
  end  

  #namespacing routes lets the browser know where to look for the controller within the backend of the application.

end
