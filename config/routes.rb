Rails.application.routes.draw do
  root 'pages#index'
  #get 'pages/index'
  get 'pages/show'
  devise_for :users, path: 'auth', :controllers => { :registrations => "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
