Attorney::Engine.routes.draw do
  root to: 'admin/documents#index'

  namespace :admin do
    resources :documents
  end

  get '/:slug', to: 'documents#show', as: :document
end
