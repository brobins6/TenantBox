Rails.application.routes.draw do
  resources :requests
  get 'messages/new'

  get 'sessions/new'

  root 'sessions#new'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

	get '/messages', to: 'messages#messages'
	post '/send', to: 'messages#create'
	get '/error', to: 'messages#error'
	get '/LandLord/Send', to:'messages#landLord_send'
	get 'LandLord/Error', to: 'messages#landLord_error'
	get '/reply', to: 'messages#reply'
  

  get '/home', to: 'movies#dashboard'

  get '/tenant_maintenance', to: 'requests#tenant_maintenance'

  get '/requestform', to: 'movies#requestform'
  get '/documents', to: 'movies#documents'
  get '/pay_rent', to: 'movies#pay_rent'
  get '/profile', to: 'movies#profile'
  get '/settings', to: 'movies#settings'
  
  get '/send', to: 'movies#send'
  get '/LandLord', to: 'movies#landLord'#, as: 'landLord'
  get '/LandLord/TennantList', to: 'movies#tennantList', as: 'tennantList'
  get '/LandLord/Messages', to: 'movies#messages_landLord', as: 'landLordMessages'
  get '/LandLord/Documents', to: 'movies#documents_landLord', as: 'landLordDocuments'
  get '/LandLord/maintenance', to: 'movies#maintenance', as: 'maintenance'
  get '/LandLord/Profile', to: 'movies#profile_landLord', as: 'landLordProfile'
  resources :tenant

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'


  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  resources :users
	resources :messages
end
