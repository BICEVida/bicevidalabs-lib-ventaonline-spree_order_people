Spree::Core::Engine.routes.draw do
  resources :orders, only: :none do
    resources :people
  end
  # Add your extension routes here
end
