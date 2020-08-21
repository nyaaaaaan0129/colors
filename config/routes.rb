Rails.application.routes.draw do
  root 'home#top'
  devise_for :views
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cosmetics
  resources :users
end
