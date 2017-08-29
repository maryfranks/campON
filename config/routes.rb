Rails.application.routes.draw do

  get 'static_pageshome/contact'
  get 'static_pageshome/about'

  get 'parks/search'
  
  resources :trips do
  resources :comments
  end

  resources :parks, only: [:index, :show]
  resource :user
  resources :sessions, only: [:new, :create, :destroy]
  
  root 'parks#index'

end
