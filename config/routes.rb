Rails.application.routes.draw do
  resources :tries
  resources :answers
  root 'game#index'
  get '/give-up' => 'game#giveup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
