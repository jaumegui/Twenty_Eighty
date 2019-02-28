class SessionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    if user
      record.user == user || user.admin
    end
  end

  def update?
    if user
      record.user == user || user.admin
    end
  end

  def destroy?
    if user
      record.user == user || user.admin
    end
  end
end
