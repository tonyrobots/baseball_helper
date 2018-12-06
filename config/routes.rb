Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  get 'batters/salary(/:salary)', to: 'batters#show'
  get 'pitchers/salary(/:salary)', to: 'pitchers#show'

  resources :batters
  resources :pitchers
  get 'pitchers/salary/:salary', to: 'pitchers#show_by_salary'



  get 'search', to: 'search#index'
  post 'search', to: 'search#search'
end
