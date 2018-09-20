# frozen_string_literal: true

Rails.application.routes.draw do
  resources :picture_win_losses
  resources :picture_measurements
  resources :picture_infos
  resources :pictures
  resources :user_infos
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
