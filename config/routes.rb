Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create, :destroy] do
    resources :doses, only: [:create]
  end
  root "cocktails#index"
end
