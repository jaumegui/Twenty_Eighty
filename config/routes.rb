Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :contents
  resources :projects do
    resources :sessions  do
      resources :mods, only: [:create, :edit, :update, :destroy]
      resources :comments, only: [:create, :destroy]
    end
  end
  post 'mod/:id', to: "mods#move", as: "move_mod"
end
