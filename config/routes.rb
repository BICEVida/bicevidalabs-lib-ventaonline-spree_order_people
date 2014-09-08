Spree::Core::Engine.routes.draw do
  namespace :spree do
    resources :people
  end

  # Add your extension routes here
end
