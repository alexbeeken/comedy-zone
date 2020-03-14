Rails.application.routes.draw do
  get '/', to: 'home#index'
  post '/auth/:provider/callback', to: 'sessions#create'
end
