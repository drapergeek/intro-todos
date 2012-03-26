IntroTodos::Application.routes.draw do
  get "sessions/new"

  root to: "high_voltage/pages#show", id: "homepage"
end
