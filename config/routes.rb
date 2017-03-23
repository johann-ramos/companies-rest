Rails.application.routes.draw do
  resources :boards
  resources :companies
  resources :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
