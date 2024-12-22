# config/routes.rb
Rails.application.routes.draw do
  get 'feedbacks/index'
  get 'feedbacks/politica' 
  get 'feedbacks/compromiso'# or 'feedback/politica' if renamed
  root "feedbacks#index"
  post 'feedbacks/create', to: 'feedbacks#create'
  get 'menu', to: 'menus#index'
  get 'feedback/gracias', to: 'feedbacks#gracias'
  get 'instagram', to: 'feedbacks#instagram'

  resources :feedbacks, only: [:create]
end

