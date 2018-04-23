Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  get '/contact', to: 'pages#contact'
  post '/contact', to: 'pages#contact_email'
end
