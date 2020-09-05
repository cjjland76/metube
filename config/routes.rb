Rails.application.routes.draw do
  resources :videos
  devise_for :users

  root "videos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
