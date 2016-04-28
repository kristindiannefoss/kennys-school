Rails.application.routes.draw do
  root to: 'teachers#index'

  resources :teachers, only: [:index, :show]
  resources :students, only: [:index, :show]

  namespace "danger" do
    resources :teachers, only: [:index]
  end
end
