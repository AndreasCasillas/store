Rails.application.routes.draw do
  root "products#index"
  get '/products/:id/buy', to: 'products#buy', as: 'buy'
  get '/checkout', to: 'products#checkout', as: 'checkout'
end