Rails.application.routes.draw do

  get 'static_pageshome/contact'
  get 'static_pageshome/about'

  get 'parks/search'
  get 'message/search'

  resources :trips do
  resources :messages
  end

  resources :parks, only: [:index, :show]
  resource :user
  resources :sessions, only: [:new, :create, :destroy]

  root 'parks#index'

end
