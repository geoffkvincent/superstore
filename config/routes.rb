Rails.application.routes.draw do
  root 'departments#index'

  resources :departments do
    resources :items
  end

  resources :carts

  
  scope 'items/:item_id', as: 'item' do
    resources :comments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
