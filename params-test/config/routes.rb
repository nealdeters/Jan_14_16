Rails.application.routes.draw do
  get '/number' => 'pages#number'
  get '/name/:name' => 'pages#name'
  get '/url_example/:password' => 'pages#url_example'
  get '/retrieve_form' => 'pages#get_form'
  post '/submit_form' => 'pages#submit_form'
end
