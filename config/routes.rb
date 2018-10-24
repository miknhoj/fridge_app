Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'fridges#index'
  
  resources :fridges do
    resources :foods
    resources :drinks
  end

end
