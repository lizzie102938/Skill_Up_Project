class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
    # record.user == user
  end

  def new?
    create?
  end

  def create?
    true
    # record.user == user
  end
end
