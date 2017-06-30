Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/edit'

  get 'reviews/show'

  get 'reviews/new'

  get 'products/index'

  get 'products/edit'

  get 'products/show'

  get 'products/new'

  root :to => 'products#index'
  resources :products do
    resources :reviews
  end
end
