# config/routes.rb
Rails.application.routes.draw do
  get 'feedback/index'
  get 'feedback/politica'  # or 'feedback/politica' if renamed
  root "feedback#index"
end