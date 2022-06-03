Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'questions', to: 'questions#index', namespace: 'form'
  get 'therapists/:id', to: 'therapists#show'


end
