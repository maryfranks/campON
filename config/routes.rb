Rails.application.routes.draw do

  get 'static_pageshome/contact'
  get 'static_pageshome/about'

  get 'parks/search'

  get 'messages/search'


  resources :trips do
  resources :messages
  end

  resources :parks, only: [:index, :show]
  resource  :user
  resources :sessions, only: [:new, :create, :destroy]

  get 'homepage' => 'static_pageshome#landing'


end
