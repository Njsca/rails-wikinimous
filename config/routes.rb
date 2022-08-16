Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get 'articles', to: 'articles#index'
  get 'articles/:id', to: 'articles#show', as: 'article'
  get 'article/new', to: 'articles#new'
  post '/articles', to: 'articles#create'
  get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch 'articles/:id', to: 'articles#update'
  delete 'articles/:id', to: 'articles#destroy'
end
