Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/home'
  root "home#index"
  
  resources :home do
    collection do
      post 'user_validation'
   			get 'logout'
    end
  end

  resources :users do
    collection do
      post 'new', 'edit', 'update', 'create'
   			get 'show'
    end
  end

end
