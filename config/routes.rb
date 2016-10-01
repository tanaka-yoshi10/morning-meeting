Rails.application.routes.draw do
  resources :users do
    resources :notes
  end
  devise_for :users
  root to: "reports#index"
end
