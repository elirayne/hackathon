Rails.application.routes.draw do



root to: 'movies#index'
# devise_for :users

resources :accounts 
resources :movies

devise_for :users, controllers: {
   registrations: 'users/registrations'
 }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
