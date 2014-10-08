Phitau::Application.routes.draw do
  resources :alumni_news_letters

  resources :positions

  resources :posts

  devise_for :users, :controllers => { :registrations => "registration" }, :path_names => { :sign_up => "register"}
  resources :users, :only => [:show, :edit, :update ]
  resources :users, :controller => "users"

  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root :to => "static_pages#home"
  
  post 'twilio/voice' => 'twilio#voice'

end
