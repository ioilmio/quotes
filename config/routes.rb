Rails.application.routes.draw do
  root to: "quotes#show"
  get 'quotes/show'
  get 'quotes/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
