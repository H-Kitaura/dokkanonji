Rails.application.routes.draw do
  root to: "tweet#index"
  resources :tweet, only: [:new, :create] do
  end
end
