Rails.application.routes.draw do

  resources :trips do
  resources :comments
  end

  resources :parks, only: [:index, :show]
  resource :user
  resources :sessions, only: [:new, :create, :destroy]

  root 'parks#index'

  # get 'login' => 'session#new', :as => :login,
  # get '/login' => 'session#create'
  get 'static_pageshome/contact'
  get 'static_pageshome/about'
  # delete '/logout' => 'sessions#destroy'
end
