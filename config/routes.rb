Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
resources :bands
resources :places
resources :genres
resources :availabilities
resources :show_makers
resources :shows

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
