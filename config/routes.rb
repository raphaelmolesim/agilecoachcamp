Rails.application.routes.draw do
  get 'admin/surveys'

  #resources :surveys, only: [:new, :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
  scope "/2018" do
    root 'welcome#index'
    get 'papers/:id', to: "papers#show"
    get 'surveys', to: "admin#surveys"
    get 'advertising', to: "welcome#advertising"
    get 'prestacao_contas', to: "welcome#prestacao_contas"
    get 'conteudo_gerado', to: "welcome#conteudo_gerado"
  end
  
end
