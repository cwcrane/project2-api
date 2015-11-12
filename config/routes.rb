Rails.application.routes.draw do
  post '/register' => 'auth#register'
  # patch '/confirm' => 'auth#confirm'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  resources :users, except: [:new, :edit] #index, show, create, update, delete
  #get '/books' => 'books#index'
  #post '/books/:id' => 'books#show'

  get '/profiles' => 'profiles#index'
  get '/profiles/:id' => 'profiles#show'
  post '/profiles' => 'profiles#create'
  patch '/profiles/:id' => 'profiles#update'
  delete '/profiles/:id' => 'profiles#destroy'

  resources :books, except: [:new, :edit]

  resources :borrow_requests, except: [:new, :edit]

  resources :ratings, except: [:new, :edit]

end
