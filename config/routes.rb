Rails.application.routes.draw do
  get 'users/show'
  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
