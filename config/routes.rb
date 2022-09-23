Rails.application.routes.draw do

  #resources :birds, only: [:index, :show, :create, :update, :destroy]
  
  #we dont need the restricted resources as we are using all route types
  resources :birds
  
  patch "/birds/:id/like", to: "birds#increment_likes"
end
