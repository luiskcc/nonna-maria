Rails.application.routes.draw do
  get 'test', to: 'feedback#test'
  get 'feedback/index'
  root "feedback#index"
end
