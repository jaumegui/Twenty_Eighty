Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :path_prefix => 'my'
  resources :users
  resources :contents
  resources :clients
  resources :projects do
    resources :sessions  do
      resources :mods, only: [:show, :create, :edit, :update, :destroy]
      resources :comments, only: [:create, :destroy]
    end
    resources :user_projects, only: [:create, :destroy]
  end
  post 'mod/:id', to: "mods#move", as: "move_mod"
end
