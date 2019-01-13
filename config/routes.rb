Rails.application.routes.draw do

  devise_for :users
  resources :students do
    get :subjects
  end

  root to: "visitors#index"

  resources :teachers do
    get :subjects_items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
