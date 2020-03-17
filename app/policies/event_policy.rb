class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end
  
  def new?
    create?
  end

  def create?
    user_in_club_event?
  end

  def edit?
    update?
  end

  def update?
    user_in_club_event?
  end

  def destroy?
    user_in_club_event?
  end

  private

  def user_in_club_event?
    record.club.users.include? user
  end
end
