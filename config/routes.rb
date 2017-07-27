Rails.application.routes.draw do
  root 'posts#index'
  get 'about' => 'pages#about'
  # get 'post/:id' => 'posts#show'
  resource :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
