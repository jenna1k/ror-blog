Rails.application.routes.draw do
  get '/board', to: 'board#index'
  post '/create', to: 'board#create'
  get '/edit', to: 'board#edit'
  post '/update', to: 'board#update'
  get '/delete', to: 'board#delete'
  get '/new', to: 'board#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
