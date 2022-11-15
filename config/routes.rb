Rails.application.routes.draw do
  devise_for :users
  root to: "tweet#index"
  resources :tweet, only: [:new, :create, :show] do
  end
end
