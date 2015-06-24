Rails.application.routes.draw do
  devise_for :users
  resources :questions 
  resources :answers
  
    root 'questions#index'
end
