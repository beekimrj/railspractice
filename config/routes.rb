Rails.application.routes.draw do
  root to: "articles#index", as: 'home'
  get 'hotels/index'
  get 'hotels/show'
  get 'hotels/edit'
  get 'hotels/new'
  get 'hotels/destroy'
  get 'paragraphs/create'
  get 'paragraphs/destroy'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
