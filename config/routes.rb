Rails.application.routes.draw do
  resources :teachers, only: [:index, :show]
  resources :students, only: [:index, :show]
end
