Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/new'
  root to: 'home#top'
  get 'about' => 'home#about'

  resources :posts
  resources :users, only: [:index, :show, :edit, :update, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
