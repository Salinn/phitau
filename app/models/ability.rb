class Ability
  include CanCan::Ability

  def initialize(user)
    def initialize(user)
      user ||= User.new # guest user

      if user.role? "admin"
        can :manage, :all
      else
        can :show, User, :id => user.id
        can :update, User, :id => user.id
      end
    end
  end
end
