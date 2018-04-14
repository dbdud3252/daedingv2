Rails.application.routes.draw do
  devise_for :users
  get '/project/find' => "posts#index"
  get '/project/submit' => "posts#new"
  resources :posts, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#home" # "/"
end
