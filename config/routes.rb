Phitau::Application.routes.draw do
  resources :meetings

  resources :text_messages

  post 'text_messages/new_message' => 'text_messages#new_message'

  resources :alumni_news_letters

  resources :positions

  resources :posts

  match 'users/all/edit' => 'users#edit_all', :as => :edit_all, :via => :get
  match 'users/all' => 'users#update_all', :as => :update_all, :via => :put
  devise_for :users, :controllers => { :registrations => "registration" }, :path_names => { :'sign_up.html.erb' => "register"}
  resources :users, :only => [:show, :edit, :update ]
  resources :users, :controller => "users"

  get 'twilio/send_text_message' => 'twilio#send_text_message'
  get 'twilio/new_message' => 'twilio#new_message'
  post 'twilio/voice' => 'twilio#voice'


  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root :to => "static_pages#home"
end
