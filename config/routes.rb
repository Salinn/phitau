Phitau::Application.routes.draw do
  resources :posts

  devise_for :users, :controllers => { :registrations => "registration" }
  resources :users, :only => [:show, :edit, :update ]
  resources :users, :controller => "users"

  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root :to => "static_pages#home"
end
