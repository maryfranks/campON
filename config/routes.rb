Rails.application.routes.draw do

  resources :trips do
  resources :comments
  end

  resources :parks, only: [:index, :show]
  resource :user
  resources :sessions, only: [:new, :create, :destroy]

  root 'parks#index'

  get 'static_pageshome/contact'
  get 'static_pageshome/about'
end
