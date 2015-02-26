class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.user_status == "admin" || user.chairs_role?('admin')
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
      end
      if user.chairs_role? 'philanthropy'
        can [:show, :update, :new, :read, :create, :delete], ValentinesDayDelievery
      end
      if user.user_role? 'recruitment' || user.chairs_role?('recruitment')
        can [:create, :read, :show], TextMessage
      end
      if user.user_role? 'writer' || user.chairs_role?('writer')
        can [:show, :update, :new, :read, :create], AlumniNewsLetter
        can [:show, :update, :new, :read, :create], Post
        can [:show, :update, :new, :read, :create], Image
        can [:show, :update, :new, :read, :create], Gallery
      end
      if user.user_role? 'president'
        can [:show, :update, :new, :read, :create], FaqCategory
        can [:show, :update, :new, :read, :create], FaqQuestion
      end
    end
  end
end
