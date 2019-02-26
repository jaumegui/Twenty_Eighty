Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :contents do
    resources :intelligence_contents
  end
  resources :intelligences
  resources :projects do
    resources :sessions  do
      resources :sessions_contents, only: [:new, :create, :edit, :update, :destroy]
    end
  end
end
