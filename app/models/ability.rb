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
      can :show, User, :id => user.id
      can :update, User, :id => user.id
      can [:show, :read, :create, :new], Image
      if user.confirmed_brother?
        can [:show, :read], AlumniNewsLetter
        can [:create, :update], Receipt
        can [:create, :potential_new_members], User
        can [:create, :update, :new], CommunityService
        can :user, :controls
        can [:show, :index], Event
      end
      if user.have_permissions?('recruitment')
        can [:create, :read, :show], TextMessage
        can [:show, :index, :create, :update], Event
      end
      if user.have_permissions?('writer')
        can [:show, :update, :new, :read, :create], AlumniNewsLetter
        can [:show, :update, :new, :read, :create], Post
        can [:show, :update, :new, :read, :create], Image
        can [:show, :update, :new, :read, :create], Gallery
      end
      if user.have_permissions?('community_service')
        can :manage, CommunityService
        can [:show, :index, :create, :update], Event
      end
    end
  end
end
