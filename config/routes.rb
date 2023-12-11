# config/routes.rb
Rails.application.routes.draw do
  get 'static_pages/contact'
  get 'articles/index'
  get 'homepage/home'
  get '/articles', to: 'articles#index', as: 'articles'
  get '/contact', to: 'static_pages#contact'
  resources :articles
  resources :posts
  root 'homepage#home'  # Adjusted to point to the 'home' action in HomepageController

  # ... other routes ...

  get "up" => "rails/health#show", as: :rails_health_check
end
