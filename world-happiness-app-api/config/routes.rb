Rails.application.routes.draw do
  namespace :api do
    resources :countries
    # resources :comments
  end
end
