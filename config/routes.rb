Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

  # /cocktails/1/doses/new


  root to: 'pages#home'

  # get "cocktails/:cocktail_id/doses", to: "reviews#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :cocktails do
  #   resources :doses do
  #     resources :ingredients
  #   end
  # end
end
