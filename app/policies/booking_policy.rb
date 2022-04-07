class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    record.student == user || record.teacher == user
  end

  def new?
    create?
  end

  def create?
    record.student == user
  end

  def edit?
    update?
  end

  def update?
    record.teacher == user
  end

  def destroy?
    record.student == user
  end
end
