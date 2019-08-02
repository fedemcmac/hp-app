Rails.application.routes.draw do
  # resources :answers, only: [:index, :show]
  resources :questions, only: [:index, :show]
  resources :users, only: [:index, :show, :create, :update]
  resources :houses, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/questions/:id/check/:answer_id', to: 'questions#check_answer'
end
