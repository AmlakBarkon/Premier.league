Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'teams#index'
# Consider adding a root to to redirect to the teams index view when someone goes to '/'

resources :teams do
    resources :players

end

end
