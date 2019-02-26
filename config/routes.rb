Rails.application.routes.draw do
  get '/', to: 'home#index'
  get '/instructions', to:'instructions#index'
  get '/game', to: 'game#index'
end
