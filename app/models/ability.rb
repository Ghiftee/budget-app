class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Transaction, author: user
    can :manage, Category, user: user
  end
end
