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
      if user.user_role? "writer"
        can [:show, :update, :new, :read, :create], AlumniNewsLetter
        can [:show, :update, :new, :read, :create], Post
      end

    end
  end
end
