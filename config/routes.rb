Rails.application.routes.draw do
  resources :paths
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/path_random', to: 'paths#random'
  put '/paths', to: 'paths#edit'
end
