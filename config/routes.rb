Rails.application.routes.draw do

  root 'home#index'
  get 'map' => 'home#map'
  get 'faq' => 'answer#index'

  devise_for :users

end
