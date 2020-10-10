Rails.application.routes.draw do
  resources :books
  root 'books#index'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  # post 'likes/:review_id/create'
  devise_for :users
  resources :users
  resources :books do
    resources :reviews
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
