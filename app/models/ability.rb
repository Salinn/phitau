class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.user_role? "admin"
      can :manage, :all
    else
      can :show, User, :id => user.id
      can :update, User, :id => user.id
      if user.user_role? "writer"
        can :admin, :controls
        can [:show, :update, :new, :read], Post
      end
      
    end
  end
end
