Rails.application.routes.draw do
  get 'test/update_smalltypes', as: "update_smalltypes"
  get 'test/show'
  get 'test/index'
  devise_for :users
  resources :submits, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#home" # "/"
  get "/mypage" => "mypage#mypage"
end
