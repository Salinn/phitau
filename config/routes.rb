Phitau::Application.routes.draw do

  resources :positions

  resources :eboards

  get 'users/:id/subscribe', to: 'users#subscribe', as: :subscribe

  get 'brothers_hours' => 'community_services#brothers_hours'
  get 'brothers_events/:id' => 'community_services#brothers_events', as: :brothers_events

  resources :community_services

  resources :chairs

  resources :receipts

  resources :galleries

  resources :images

  resources :faq_categories

  resources :faq_questions

  get 'valentines_day' => 'valentines_day_delieveries#new'

  resources :valentines_day_inventories

  resources :valentines_day_delieveries

  resources :meetings

  resources :text_messages

  get 'text' => 'text_messages#new'

  post 'text_messages/new_message' => 'text_messages#new_message'

  resources :alumni_news_letters

  resources :posts

  match 'users/all/edit' => 'users#edit_all', :as => :edit_all, :via => :get
  match 'users/all' => 'users#update_all', :as => :update_all, :via => :put
  get 'users/new' => 'users#new'

  devise_for :users, :controllers => { :registrations => 'registration' }, :path_names => { :'sign_up.html.erb' => 'register'}
  resources :users, :only => [:show, :edit, :update ]
  resources :users_admin, :controller => 'users'

  get 'potentials' => 'users#potential_new_members'
  get 'signup' => 'users#new'

  get 'twilio/send_text_message' => 'twilio#send_text_message'
  get 'twilio/new_message' => 'twilio#new_message'
  post 'twilio/voice' => 'twilio#voice'


  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root :to => 'static_pages#home'
end
