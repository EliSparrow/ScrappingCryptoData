Rails.application.routes.draw do
  root 'static#home'
  resources :cryptos
  get  '/index',    to: 'cryptos#index'

  post '/reset_db', to: 'cryptos#reset_db'
  post '/scraper', to: 'cryptos#scraper'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
