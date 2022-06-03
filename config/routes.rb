Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'questions', to: 'questions#index'
  resources :user_answers, only: [:create, :new]
  resources :therapists, only: [:index, :show]

end
