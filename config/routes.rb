Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  get 'batters/salary(/:salary)', to: 'batters#show_by_salary'
  get 'pitchers/salary(/:salary)', to: 'pitchers#show_by_salary'

  resources :batters
  resources :pitchers


  get 'search', to: 'search#index'
  post 'search', to: 'search#search'
end
