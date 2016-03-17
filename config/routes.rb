Rails.application.routes.draw do
  root 'team_accounts#index'
  resources :team_accounts
end
