Rails.application.routes.draw do

  root 'movies#index'
# devise_for :users

resources :accounts 

resources :movies do
  resources :comments
end

devise_for :users, controllers: {
   registrations: 'users/registrations'
 }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
