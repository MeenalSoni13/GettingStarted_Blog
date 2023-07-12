Rails.application.routes.draw do
  get 'comments/index'
  # get '/articles', to: "articles#index"
  # get '/articles/:id', to: "articles#show"

  resources :articles do
    resources :comments
  end  
  #  get 'articles/show'
  root "articles#index"
end
