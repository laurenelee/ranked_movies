Rails.application.routes.draw do
  resources :movie_details
  # get '/movies', to: 'movies#index', as: 'movies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
