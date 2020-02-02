Rails.application.routes.draw do
  get 'messages/index'

  root "message#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

