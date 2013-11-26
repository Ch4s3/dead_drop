DeadDrop::Application.routes.draw do
  resources :message
  root to: "home#index"
end
