Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :projects do
    resources :sessions
  end
=======
  devise_for :users
  resources :projects
>>>>>>> 14543e748f7467994698fec880a37bf8fa527bd2
end
