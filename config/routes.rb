Phitau::Application.routes.draw do
  resources :text_messages

  resources :alumni_news_letters

  resources :positions

  resources :posts

  devise_for :users, :controllers => { :registrations => "registration" }, :path_names => { :sign_up => "register"}
  resources :users, :only => [:show, :edit, :update ]
  resources :users, :controller => "users"

  get 'twilio/send_text_message' => 'twilio#send_text_message'
  get 'twilio/new_message' => 'twilio#new_message'

  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root :to => "static_pages#home"
end
