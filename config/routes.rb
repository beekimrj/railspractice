Rails.application.routes.draw do
  root to: "articles#index", as: 'home'
  resources :hotels
  # get 'paragraphs/new'
  # get 'paragraphs/destroy'
  # get 'paragraphs/index'
  # get 'paragraphs', to: "paragraphs#index"
  resources :paragraphs
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
