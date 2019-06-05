Rails.application.routes.draw do
  root 'home#index'


  resources :clans do
    resources :samurais, only: %i[index create update destroy]
  end

  namespace :api do
    namespace :v1 do
      resources :clans do
        resources :samurais, only: %i[index create update destroy]
      end
    end
  end

end





