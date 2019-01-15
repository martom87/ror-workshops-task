Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  root to: "visitors#index"

  resources :teachers do
    get :subjects
  end

  resources :subject_items

  resources :subject_item_notes

  get 'report/subjects', to: 'reports#subjects'

  resources :visitors, only: [:index]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
