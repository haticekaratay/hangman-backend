Rails.application.routes.draw do
  resources :words ,only: [:index, :show]
  resources :games , only: [:create, :show]
  resources :players ,only:[:create, :show, :index]

  get "/current_player" =>"players#current_player"
  get "/best_score" =>"players#best_score"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
