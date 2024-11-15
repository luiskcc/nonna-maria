Rails.application.routes.draw do
  get 'feedback/index'
  root "feedback#index"
end
