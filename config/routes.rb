Rails.application.routes.draw do
  root 'welcome#comming_soon', :year => 2022
  get '/launch', to: 'welcome#index', :year => 2022
  get '/launch-23', to: 'welcome#index', :year => 2023
  
  scope "/2018" do
    get '/', to: 'welcome#index', :year => 2018
    get 'papers/:id', to: "papers#show", :year => 2018
    get 'surveys', to: "admin#surveys", :year => 2018
    get 'advertising', to: "welcome#advertising", :year => 2018
    get 'prestacao_contas', to: "welcome#prestacao_contas", :year => 2018
    get 'conteudo_gerado', to: "welcome#conteudo_gerado", :year => 2018

    #get 'surveys/new', to: "surveys#new", :year => 2018
  end
  
  scope "/2019" do
    get '/', to: 'welcome#index', :year => 2019
    get 'prestacao_contas', to: "welcome#accountability", :year => 2019
    get 'submission', to: "welcome#submission", :year => 2019
  end

  resources :position_papers, except: [:show, :index, :edit, :update, :delete]
  get "/:year/position_papers/:id" => "position_papers#show"
  get "/:year/position_papers" => "position_papers#index"
  delete "/:year/position_papers/:id" => "position_papers#destroy"
  get "/:year/position_papers/:id/edit" => "position_papers#edit"
  patch "/:year/position_papers/:id" => "position_papers#update"


  scope "/2020" do
    get '/', to: "welcome#index", :year => 2020
    get 'submission', to: "welcome#submission", :year => 2020
    get 'faq', to: "welcome#faq", :year => 2020
    get 'conteudo_gerado', to: "welcome#conteudo_gerado", :year => 2020
  end
  
end
