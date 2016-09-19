Rails.application.routes.draw do

  root 'home#index'
  get 'faq' => 'answer#index'

  devise_for :users

end
