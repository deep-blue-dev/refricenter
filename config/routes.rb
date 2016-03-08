Rails.application.routes.draw do
  devise_for :admins
  get 'admin' => 'admin#home'

  get 'brands', to: "categories#brands"
  resources :categories#, param: :id do
  resources :products #, param: :id do TODO HOW TO RELATE THEM
      # end
    # end

  root 'pages#index'
end
