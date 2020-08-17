Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/home'
  devise_for :users
  # 後でルーティングの設定見直しする
  # root to: 'reviews#index'
  resources :reviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
