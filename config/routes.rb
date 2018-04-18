Rails.application.routes.draw do
  api_version(:module => "V1", :path => {:value => "v1"}) do
    post 'users/login' => 'users#login'
    get 'users/token' => 'users#token'
  	resources :barters
  	resources :products
  	resources :product_barters
  	resources :users
  	resources :villages
  end
	constraints subdomain: 'api' do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
