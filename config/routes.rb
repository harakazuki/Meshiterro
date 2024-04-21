Rails.application.routes.draw do
  
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  root to: "homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'
end
