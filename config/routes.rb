Rails.application.routes.draw do
  resources :books do
    collection do
      get 'search'
    end
  end
  resources :users

  # Pages Controller
  root 'pages#home'
  get '/about', to: 'pages#about'
  get '/goodbye', to: 'pages#goodbye'

  # Users Controller
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Books Controller
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'
  get '/books/new', to: 'books#new'
  post '/books/new', to: 'books#create'
  get '/books/:id/edit', to: 'books#edit'
  patch '/books/:id', to: 'books#update'

end
