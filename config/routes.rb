Rails.application.routes.draw do
  get 'admin/surveys'

  #resources :surveys, only: [:new, :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome', to: "welcome#index", :year => 2019
  
  root 'welcome#comming_soon', :year => 2019
  #get 'quarto-compartilhado', to: "welcome#shared_room", :year => 2019
  
  scope "/2018" do
    root 'welcome#index', :year => 2018
    get 'papers/:id', to: "papers#show", :year => 2018
    get 'surveys', to: "admin#surveys", :year => 2018
    get 'advertising', to: "welcome#advertising", :year => 2018
    get 'prestacao_contas', to: "welcome#prestacao_contas", :year => 2018
    get 'conteudo_gerado', to: "welcome#conteudo_gerado", :year => 2018
    
    #get 'surveys/new', to: "surveys#new", :year => 2018
  end
  
end
