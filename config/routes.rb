Rails.application.routes.draw do

  get 'articles/new'

  get 'articles/create'

  get 'articles/show'

  get 'photos/create'

	root 'static_pages#home'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destory'

  patch '/update', to: 'users#update'

  post '/create_article', to: "articles#create"
  
  post '/find_show_user', to: 'find_user#show'
  
  resources :users
  resources :articles
end
