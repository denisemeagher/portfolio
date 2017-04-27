Rails.application.routes.draw do
  root "sites#index"

  resources :articles, only: [:show]
end
