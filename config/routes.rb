# config/routes.rb
Rails.application.routes.draw do
  get 'feedbacks/index'
  get 'feedbacks/politica' 
  get 'feedbacks/compromiso'# or 'feedback/politica' if renamed
  root "feedbacks#index"
  post 'feedbacks/create', to: 'feedbacks#create'
  get 'menus', to: 'menus#index'

  resources :feedbacks, only: [:create]
end
