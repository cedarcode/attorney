Attorney::Engine.routes.draw do
  namespace :admin do
    resources :documents
  end

  root to: 'admin/documents#index'
end
