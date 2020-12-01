Rails.application.routes.draw do
  resources :books
  root 'books#index'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  devise_for :users
  resources :users
  resources :books do
    resources :reviews do
      resources :likes
      resources :comments, only: [:create,:destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
