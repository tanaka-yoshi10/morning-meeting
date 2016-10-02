Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :notes
  end
  root to: "reports#index"
end
