Rottenpotatoes::Application.routes.draw do
  
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  resources :movies
  # match 'find_same_director => 'movies#same'

  get '/movies/find_same_director/:id', to: 'movies#find_same_director', as: 'find_same_director' 
end
