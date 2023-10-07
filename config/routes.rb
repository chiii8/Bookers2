Rails.application.routes.draw do
  get 'homes/about' => 'homes#about', as: 'about'
  devise_for :users
  root to: "homes#top"
  
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
