Rails.application.routes.draw do
  namespace :api do
    resources :owners do
      resources :stocks
end
end 
end