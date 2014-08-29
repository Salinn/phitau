Phitau::Application.routes.draw do
  devise_for :users
  resources :user, :controller => "user"

  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root :to => "static_pages#home"
end
