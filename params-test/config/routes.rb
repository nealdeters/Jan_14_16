Rails.application.routes.draw do
  get '/' => 'pages#number'
  get '/name' => 'pages#name'
end
