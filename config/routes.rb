Rails.application.routes.draw do
  resources :words
  resources :games
  resources :players

  get "/current_player" =>"players#current_player"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
