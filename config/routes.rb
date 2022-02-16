Rails.application.routes.draw do
  resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, only: [ :new, :create ]
  end
  # , :except [:edit, :update, :destroy]


  resources :reviews, except: [:index, :show, :edit, :update, :destroy]
  # , :except

     # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
