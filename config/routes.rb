Rails.application.routes.draw do

	resources :moussaillons

	root to: 'static_pages#home', as: "home"

	get 'new', to: 'moussaillons#new', as: 'new'

	get 'show', to: 'moussaillons#show', as: 'show'

	get 'edit', to: 'moussaillons#edit', as: 'edit'

	get 'index', to: 'moussaillons#index', as: 'index' 

	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
