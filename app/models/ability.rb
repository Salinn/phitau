class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.have_permissions?('admin')
      can :manage, :all
    end

    can :show, Image
    can [:show, :read], Gallery
    if user.user_status != nil
      can :subscribe, User
      can :show, User, :id => user.id
      can :update, User, :id => user.id
      can [:show, :update, :new, :read, :create], ValentinesDayDelievery
      if user.confirmed_brother?
        can [:show, :read], AlumniNewsLetter
        can [:create, :update], Receipt
        can [:create], User
        can [:create, :update], CommunityService
      end
      if user.have_permissions?('philanthropy')
        can [:show, :update, :new, :read, :create, :delete], ValentinesDayDelievery
      end
      if user.have_permissions?('recruitment')
        can [:create, :read, :show], TextMessage
      end
      if user.have_permissions?('writer')
        can [:show, :update, :new, :read, :create], AlumniNewsLetter
        can [:show, :update, :new, :read, :create], Post
        can [:show, :update, :new, :read, :create], Image
        can [:show, :update, :new, :read, :create], Gallery
      end
      if user.have_permissions?('president')
        can [:show, :update, :new, :read, :create], FaqCategory
        can [:show, :update, :new, :read, :create], FaqQuestion
      end
      if user.have_permissions?('community_service')
        can [:show, :update, :new, :read, :create], CommunityService
      end
    end
  end
end
