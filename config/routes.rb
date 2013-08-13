Hogwarts::Application.routes.draw do
  root to: 'welcome#index'

  resource :houses
  resource :students
end