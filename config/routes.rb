Rails.application.routes.draw do
  resources :surveys
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
    
    get 'pappers/:id', to: "pappers#show"
    get '/payments/new', to: "welcome#payment"
    post '/payments', to: "welcome#create_payment"
end
