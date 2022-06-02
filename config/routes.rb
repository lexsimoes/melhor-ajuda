Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :questions, only: :index

=======

  get 'questions', to: 'questions#index'
>>>>>>> 88c72d5abae5e63f6ea19be1c78ddd7e8d234cf1
  get 'therapist', to: 'therapists#show'


end
