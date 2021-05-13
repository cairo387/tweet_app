Rails.application.routes.draw do
  root to: 'home#top'
  get 'about' => 'home#about'
  get 'login_user' => 'users#login_form'

  resources :posts
  resources :users, only: [:index, :show, :edit, :update, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
