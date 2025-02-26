Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get("/", { controller: "places", action: "index" }) # Root route
  resources :places do
    resources :entries, only: [:new, :create] # Nested routes for entries under places
  end
    
  
end
