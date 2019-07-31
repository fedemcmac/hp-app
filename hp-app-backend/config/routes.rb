Rails.application.routes.draw do
  # resources :answers, only: [:index, :show]
  resources :questions, only: [:index, :show]
  resources :users, only: [:index, :show, :create]
  resources :houses, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/questions/:id/check', to: 'questions#check_answer'

end
