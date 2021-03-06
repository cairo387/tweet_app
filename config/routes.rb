Rails.application.routes.draw do
  root to: 'home#top'
  get 'about' => 'home#about'
  get 'login_user' => 'users#login_form'
  post 'login_user' => 'users#login'
  post 'logout_user' => 'users#logout'
  get 'users/:id/likes' => 'users#likes'

  resources :posts do
    resource :like ,only: [:create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
