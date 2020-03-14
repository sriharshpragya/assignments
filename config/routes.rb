Rails.application.routes.draw do
  devise_for :users

  root to: 'questions#index'
  
  resources :questions do
  	member do
  		post :follow_topic 
  		post :follow_user
  	end 
  end
end
