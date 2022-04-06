class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
    # record.student == user || record.teacher == user
  end

  def new?
    create?
  end

  def create?
    record.user == user
  end
end
