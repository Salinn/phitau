Phitau::Application.routes.draw do
  devise_for :users
  resources :user, :controller => "user"
end
