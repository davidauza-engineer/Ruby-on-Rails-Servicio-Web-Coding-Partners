Rails.application.routes.draw do
  # Rutas específicas para el API JSON:
  namespace :api, defaults: { format: 'json' } do
    resources :amistades, only: [:index, :show, :create, :update, :destroy]
    resources :usuarios_tecnologias, only: [:index, :show, :create, :update, :destroy]
    resources :tecnologias, only: [:index, :show, :create, :update, :destroy]
    resources :usuarios, only: [:index, :show, :create, :update, :destroy]
  end
  # Rutas para las vistas para interactuar con el API
  resources :amistades
  resources :usuarios_tecnologias
  resources :tecnologias
  resources :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
