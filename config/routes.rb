Rails.application.routes.draw do
  resources :articles
  root 'articles#list'
end
