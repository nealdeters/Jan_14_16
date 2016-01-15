Rails.application.routes.draw do
  get '/:number' => 'pages#number'
  get '/name' => 'pages#name'
  get '/url_example/:wildcard/trees' => 'pages#url_example'
end
