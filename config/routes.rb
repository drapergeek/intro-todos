IntroTodos::Application.routes.draw do
  resource :sessions, :only=>[:new, :create, :destroy]
  resources :todos, :only=>[:index]
  match "/sign_up", to: "sessions#new"

  root to: "high_voltage/pages#show", id: "homepage"
end
