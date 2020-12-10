Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do
      resources :transactions
      resources :accounts
    end 
  end  

  #namespacing routes lets the browser know where to look for the controller within the backend of the application.
  
end

fetch('http://localhost:3000/api/v1/transactions')
