Rails.application.routes.draw do
  get 'admin/surveys'

  resources :surveys, only: [:new, :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'pappers/:id', to: "pappers#show"
  get 'surveys', to: "admin#surveys"
end
