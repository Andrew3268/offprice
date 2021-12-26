Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :homes

  get '/homes/hashtag/:name', to:'homes#hashtags'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
