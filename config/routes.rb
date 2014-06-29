SmRc399::Application.routes.draw do
  resources :search_suggestions

  resources :products
  root 'products#index'
end
