Rails.application.routes.draw do
  root 'welcome#index', :year => 2019
  
  get 'admin/surveys'

  get '/2019', to: "welcome#index", :year => 2019

  #resources :surveys, only: [:new, :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome', to: "welcome#index", :year => 2019
  get 'submission', to: "welcome#submission", :year => 2019
  scope "/2019" do
    resources :position_papers, :year => 2019 
    get 'sorteio', to: "welcome#raffle", :year => 2019
    post 'sorteio', to: "welcome#pick", :year => 2019
    delete 'sorteio', to: "welcome#unpick", :year => 2019
    get 'prestacao_contas', to: "welcome#accountability", :year => 2019
  end
  
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
