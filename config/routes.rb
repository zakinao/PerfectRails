Rails.application.routes.draw do
  root "welcome#index"
  get "auth/:provider/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  resource :retirements, only: %i[new create]
  resources :events, only: %i[new create show update edit destroy] do
    resources :tickets, only: %i[new create destroy]
  end
end
