Rails.application.routes.draw do
  get "/produtos/new" => "produtos#new"
  post "/produtos" => "produtos#create"
  delete "/produtos/:id" => "produtos#destroy", as: :produto

  root "produtos#index"
resources :produtos
  get 'entregue/:id ', :to => 'produtos#entregue', :as => :entregue
  get 'amanha', :to => 'produtos#amanha'
  get 'ontem', :to => 'produtos#ontem'
  get 'hoje', :to => 'produtos#hoje'
end
