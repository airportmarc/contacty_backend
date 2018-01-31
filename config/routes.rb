Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  post "makeaction" => "makeaction#act"
  resources :users do
    resources :circles
    resources :phone
    resources :email

  end


end
