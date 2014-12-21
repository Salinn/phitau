class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.user_role? "admin"
      can :manage, :all
    else
      can :show, User, :id => user.id
      can :update, User, :id => user.id
      can :read, AlumniNewsLetter
      can :show, Image
      can [:show, :read], Gallery
      if user.user_role? "writer"
        can [:show, :update, :new, :read, :create], AlumniNewsLetter
        can [:show, :update, :new, :read, :create], Post
        can [:show, :update, :new, :read, :create], Image
        can [:show, :update, :new, :read, :create], Gallery
      end
      if user.user_role? "president"
        can [:show, :update, :new, :read, :create], FaqCategory
        can [:show, :update, :new, :read, :create], FaqQuestion
      end
      if user.user_role? "recruitment"
        can [:show, :update, :new, :read, :create], TextMessage
      end
    end
  end
end
