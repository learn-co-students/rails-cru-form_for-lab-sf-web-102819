Rails.application.routes.draw do
  resources :add_name_to_songs
  resources :songs
  resources :genres
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
