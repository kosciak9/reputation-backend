Rails.application.routes.draw do
  resources :users do
    resources :opinions
    resources :tweets
  end
  resources :tweets do
    resources :opinions
  end
  resources :opinions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
