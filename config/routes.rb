Rails.application.routes.draw do


  root to: 'static_pageshome#landing'

  get 'static_pageshome/team'
  get 'static_pageshome/about'

  post 'trips/:trip_id/invite' => 'trips#invite_user', :as => 'invite_user'

  get 'trips/:trip_id/messages/:id/edit' => 'messages#edit'
  get 'trips/:trip_id/messages/:id' => 'messages#destroy'

  get 'parks/search'

  resources :invitations

  resources :trips do
    resources :messages
    resources :todos
  end

  resources :parks, only: [:index, :show]
  resource  :user
  resources :sessions, only: [:new, :create, :destroy]

  get 'homepage' => 'static_pageshome#landing'


end
