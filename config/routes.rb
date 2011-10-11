SimpleIdentity::Application.routes.draw do
  match '/signup' => 'users#new'
  match '/login'  => 'sessions#new'
  match '/logout' => 'sessions#destroy'

  match '/auth/failure'            => 'sessions#login_failure'
  match '/auth/:provider/callback' => 'sessions#create'   

  match '/dashboard' => 'dashboard#index'

  resources :users, :only => [:new, :show]

  root :to => 'pages#index'
end
