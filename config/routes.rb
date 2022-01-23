# frozen_string_literal: true

# == Route Map
#
#                   Prefix Verb   URI Pattern                   Controller#Action
#                     root GET    /                             pages#index
#               pages_show GET    /pages/show(.:format)         pages#show
#         new_user_session GET    /auth/sign_in(.:format)       devise/sessions#new
#             user_session POST   /auth/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /auth/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /auth/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /auth/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /auth/password(.:format)      devise/passwords#update
#                          PUT    /auth/password(.:format)      devise/passwords#update
#                          POST   /auth/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /auth/cancel(.:format)        registrations#cancel
#    new_user_registration GET    /auth/sign_up(.:format)       registrations#new
#   edit_user_registration GET    /auth/edit(.:format)          registrations#edit
#        user_registration PATCH  /auth(.:format)               registrations#update
#                          PUT    /auth(.:format)               registrations#update
#                          DELETE /auth(.:format)               registrations#destroy
#                          POST   /auth(.:format)               registrations#create

Rails.application.routes.draw do
  root 'pages#index'
  # get 'pages/index'
  get 'pages/show'
  devise_for :users, path: 'auth', controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
