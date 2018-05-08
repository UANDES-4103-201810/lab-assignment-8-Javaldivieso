Rails.application.routes.draw do
  resources :products
  resources :users do 
	resources :Products,  controller:'users/products'
  end
  get 'admin_home', to: 'users#admin_home'
  get 'admin_users', to: 'users#admin_users'
  get 'admin_products', to: 'products#admin_products'
  get 'admin_users_products', to: 'users#admin_users_products'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
