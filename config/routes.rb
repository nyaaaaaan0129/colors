Rails.application.routes.draw do
  get 'brands/new'
  root 'home#top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cosmetics
  resources :users
  resources :wants
  resources :genres
  resources :color_genres
  resources :brands
end
