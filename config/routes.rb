Attorney::Engine.routes.draw do
  resources :documents

  root to: "home#index"
end
