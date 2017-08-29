Rails.application.routes.draw do


  get 'static_pageshome/contact'
  get 'static_pageshome/about'

  get 'parks/search'
  
  resources :trips do
    resources :comments
  end

  resources :parks, only: [:index, :show]
  resource :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
