Rails.application.routes.draw do
  # resources :movies
  get '/movies', to: 'movies#index', as: 'movies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end