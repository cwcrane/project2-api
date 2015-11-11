Rails.application.routes.draw do
  post '/register' => 'auth#register'
  # patch '/confirm' => 'auth#confirm'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  resources :users, except: [:new, :edit] #index, show, create, update, delete
  #get '/books' => 'books#index'
  #post '/books/:id' => 'books#show'


  resources :books, except: [:new, :edit]

  resources :profiles, except: [:new, :edit]

  resources :borrow_requests, except: [:new, :edit]

  resources :ratings, except: [:new, :edit]

end
