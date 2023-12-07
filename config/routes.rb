Rails.application.routes.draw do
  get 'static_pages/contact'
  get 'articles/index'
  get 'homepage/home'
  get '/articles', to: 'articles#index', as: 'articles'
  get '/contact', to: 'static_pages#contact'
  get '/article_show/:id', to: 'articles#show', as: 'article_show'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
