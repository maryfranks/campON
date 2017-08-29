Rails.application.routes.draw do


  get 'static_pageshome/contact'
  get 'static_pageshome/about'

  resources :trips do
    resources :comments
  end

  resources :parks, only: [:index, :show]
  resource :user
  resource :sessions
  
end
