Rails.application.routes.draw do
  scope '/api/v1' do
    resources :users do
      resources :opinions
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
