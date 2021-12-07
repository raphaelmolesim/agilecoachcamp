Rails.application.routes.draw do
  root 'welcome#index', :year => 2022

=begin
  get 'admin/surveys'

  get '/2019', to: "welcome#index", :year => 2019
  get '/2020', to: "welcome#index", :year => 2020
  get '/2022', to: "welcome#index", :year => 2022

  resources :position_papers, except: [:show, :index, :edit, :update, :delete]
  get "/:year/position_papers/:id" => "position_papers#show"
  get "/:year/position_papers" => "position_papers#index"
  delete "/:year/position_papers/:id" => "position_papers#destroy"
  get "/:year/position_papers/:id/edit" => "position_papers#edit"
  patch "/:year/position_papers/:id" => "position_papers#update"

  #resources :surveys, only: [:new, :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome', to: "welcome#index", :year => 2019
  get 'submission', to: "welcome#submission", :year => 2020

  scope "/2018" do
    root 'welcome#index', :year => 2018
    get 'papers/:id', to: "papers#show", :year => 2018
    get 'surveys', to: "admin#surveys", :year => 2018
    get 'advertising', to: "welcome#advertising", :year => 2018
    get 'prestacao_contas', to: "welcome#prestacao_contas", :year => 2018
    get 'conteudo_gerado', to: "welcome#conteudo_gerado", :year => 2018

    #get 'surveys/new', to: "surveys#new", :year => 2018
  end

  scope "/2019" do
    get 'prestacao_contas', to: "welcome#accountability", :year => 2019
    get 'submission', to: "welcome#submission", :year => 2019
  end

  scope "/2020" do
    get 'submission', to: "welcome#submission", :year => 2020
    get 'faq', to: "welcome#faq", :year => 2020
    get 'conteudo_gerado', to: "welcome#conteudo_gerado", :year => 2020
  end
=end
  
end
