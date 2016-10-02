Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :notes
  end
  resources :reports, only: [:index]
  root to: "reports#index"
end
