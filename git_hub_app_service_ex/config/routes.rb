Rails.application.routes.draw do
  root 'home#index'

  get 'user_repositories', to: 'repositories#index'
end
