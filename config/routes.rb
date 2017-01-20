Rails.application.routes.draw do
  get 'show_makers/index'

  get 'show_makers/new'

  get 'show_makers/create'

  get 'show_makers/show'

  get 'show_makers/edit'

  get 'show_makers/update'

  get 'show_makers/destroy'

  get 'shows/index'

  get 'shows/new'

  get 'shows/create'

  get 'shows/show'

  get 'shows/edit'

  get 'shows/update'

  get 'shows/destroy'

  get 'availabilities/index'

  get 'availabilities/new'

  get 'availabilities/create'

  get 'availabilities/show'

  get 'availabilities/edit'

  get 'availabilities/update'

  get 'availabilities/destroy'

  get 'genres/index'

  get 'genres/new'

  get 'genres/create'

  get 'genres/show'

  get 'genres/edit'

  get 'genres/update'

  get 'genres/destroy'

  get 'places/index'

  get 'places/new'

  get 'places/create'

  get 'places/show'

  get 'places/edit'

  get 'places/update'

  get 'places/destroy'

  get 'bands/index'

  get 'bands/new'

  get 'bands/create'

  get 'bands/show'

  get 'bands/edit'

  get 'bands/update'

  get 'bands/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
