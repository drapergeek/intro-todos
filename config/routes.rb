IntroTodos::Application.routes.draw do
  resources :sessions, :only=>[:new, :create]
  match "/sign_up", to: "sessions#new"

  root to: "high_voltage/pages#show", id: "homepage"
end
