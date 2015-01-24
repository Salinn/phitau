class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.user_role? "admin"
      can :manage, :all
    end

    can :show, Image
    can [:show, :read], Gallery
    if user.role != nil
      can :show, User, :id => user.id
      can :update, User, :id => user.id
      if user.confirmed_brother?
        can [:show, :read], AlumniNewsLetter
        can [:create, :update], Receipt
        can [:create], User
      end
      if user.user_role? 'recruitment' or user.chairs_role? 'recruitment'
        can [:create, :read, :show], TextMessage
      end
      if user.user_role? 'writer' or user.chairs_role? 'writer'
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
