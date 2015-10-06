Phitau::Application.routes.draw do

  resources :standards_boards do
    put :updated_completed
  end

  resources :interview_questionnaires

  resources :bids

  resources :interview_times

  resources :rush_interviews

  resources :events

  resources :alumni_eternal_stories

  resources :alumni_eternals

  resources :composites

  resources :paddles

  resources :roles

  resources :positions

  get 'users/:id/subscribe', to: 'users#subscribe', as: :subscribe

  get 'brothers_hours' => 'community_services#brothers_hours'
  get 'community_service_manually' => 'community_services#enter_hours_manually'
  get 'brothers_events/:user_id' => 'community_services#brothers_events'

  resources :community_services

  resources :receipts

  resources :galleries

  resources :images

  resources :faq_categories

  resources :faq_questions

  get 'valentines_day' => 'valentines_day_delieveries#new'

  resources :text_messages

  get 'text' => 'text_messages#new'

  post 'text_messages/new_message' => 'text_messages#new_message'

  resources :alumni_news_letters

  resources :posts

  match 'users/all/edit' => 'users#edit_all', :as => :edit_all, :via => :get
  match 'users/all' => 'users#update_all', :as => :update_all, :via => :put
  get 'users/new' => 'users#new'
  get 'search_users' => 'users#search_users'

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
