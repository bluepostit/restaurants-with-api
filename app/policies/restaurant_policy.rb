class RestaurantPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end

  def update?
    binding.pry
    user == record.user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
