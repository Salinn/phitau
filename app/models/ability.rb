class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.user_role? "admin"
      can :manage, :all
    else
      can :show, User, :id => user.id
      can :update, User, :id => user.id
      can [:show, :read], AlumniNewsLetter
      can [:show, :read], FaqCategory
      can [:show, :read], FaqQuestion
      if user.user_role? "writer"
        can [:show, :update, :new, :read, :create], AlumniNewsLetter
        can [:show, :update, :new, :read, :create], Post
      end
      if user.user_role? "president"
        can [:show, :update, :new, :read, :create], FaqCategory
        can [:show, :update, :new, :read, :create], FaqQuestion
      end
      end
  end
end
