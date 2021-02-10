Rails.application.routes.draw do
  patch "/api/v1/heros/", to: "api/v1/heros#update"
  namespace :api do
    namespace :v1 do
      resources :heros
     
      
    end
  end
 
end
