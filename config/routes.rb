Attorney::Engine.routes.draw do
  namespace :admin do
    resources :documents
  end
end
