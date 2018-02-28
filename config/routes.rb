Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  resources :batters
  get 'batters/salary/:salary', to: 'batters#show_by_salary'
  resources :pitchers
  get 'pitchers/salary/:salary', to: 'pitchers#show_by_salary'



  get 'search', to: 'search#index'
  post 'search', to: 'search#search'
end
