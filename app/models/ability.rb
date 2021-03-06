class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.have_permissions?('admin') || user.have_permissions?('president')
      can :manage, :all
    end

    can [:show, :index], Event, private_event: false
    can [:show, :read], Image
    can [:show, :read], Gallery
    can [:show, :read], Post
    can [:show, :read], User
    if user.user_status != nil
      can :subscribe, User
      can :update, User, :id => user.id
      can [:index], InterviewTime
      if user.confirmed_brother?
        can [:show, :read, :create, :new], Image
        can [:show, :read], AlumniNewsLetter
        can [:create, :update], Receipt
        can [:create, :potential_new_members, :search_users], User
        can [:create, :update, :new], CommunityService
        can :user, :controls
        can [:show, :index], Event
        can [:show, :index], InterviewQuestionnaire
        can [:show, :index], RushInterview
        can [:show, :index], Bid
      end
      unless user.confirmed_brother?
        can [:index, :update], InterviewTime
        can [:show, :update], InterviewQuestionnaire, :user_id => user.id
      end
      if user.have_permissions?('recruitment')
        can [:create, :index], StandardsBoard
        can [:update, :edit], StandardsBoard
        can [:create, :read, :show], TextMessage
        can [:create, :update], Event
        can :manage, InterviewTime
        can [:update], RushInterview
        can [:update], Bid
      end
      if user.have_permissions?('first_vp')
        can :manage, StandardsBoard
      end
      if user.have_permissions?('writer')
        can [:show, :update, :new, :read, :create], AlumniNewsLetter
        can [:show, :update, :new, :read, :create], Post
        can [:show, :update, :new, :read, :create], Image
        can [:show, :update, :new, :read, :create], Gallery
      end
      if user.have_permissions?('community_service')
        can [:create, :index], StandardsBoard
        can [:update, :edit], StandardsBoard
        can :manage, CommunityService
        can [:create, :update], Event
      end
      if user.have_permissions?('philanthropy')
        can [:create, :index], StandardsBoard
        can [:update, :edit], StandardsBoard
        can [:create, :update], Event
      end
      if user.have_permissions?('secretary')
        can [:create, :index], StandardsBoard
        can [:update, :edit], StandardsBoard
        can :manage, CommunityService
        can [:show, :index, :create, :update], Event
      end
    end
  end
end
