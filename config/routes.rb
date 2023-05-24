Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:create, :index, :create]
    #ne pas oublier la :new si le form de la review a sa propre page !
  end
end
