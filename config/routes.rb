Rails.application.routes.draw do
  root to: 'pages#home'
  resources :galleries
  resources :articles
  resources :contact_forms


end
