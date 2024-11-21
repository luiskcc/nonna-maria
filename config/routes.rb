# config/routes.rb
Rails.application.routes.draw do
  get 'feedback/index'
  get 'feedback/politica' 
  get 'feedback/compromiso'# or 'feedback/politica' if renamed
  root "feedback#index"
end