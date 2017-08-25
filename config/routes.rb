Rails.application.routes.draw do

  resources :activities, :messages, :parks, :trips, :users

root 'parks#index'


end
