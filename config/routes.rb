Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  api_version(:module => "V1", :path => {:value => "v1"}) do
  	resources :admins
  	resources :categorys
  	resources :detail_users
  	resources :outsider_users
  	resources :products
  	resources :services
  	resources :villages
  	resources :village_users
  	# ?post "admin/login", to: "admin/"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
