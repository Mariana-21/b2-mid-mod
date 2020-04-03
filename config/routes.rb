Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/mechanics', to: 'mechanics#index'

  get '/amusementparks', to: 'amusementparks#index'
  get 'amusementparks/:park_id', to: 'amusementparks#show'
end
