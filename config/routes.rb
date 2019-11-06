Rails.application.routes.draw do
  resources :users
  patch 'users/:id/cookies', to: 'users#add_cookie'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
