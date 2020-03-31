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
   user_in_club_event_except_for_regret_julien?
  end

  def update?
    user_in_club_event_except_for_regret_julien?
  end

  def destroy?
    user_in_club_event_except_for_regret_julien?
  end

  def register_to_event?
    is_user_profile?
  end

  private

  def user_in_club_event?
    record.club.users.include? user
  end

  def is_user_profile?
    user == @user
  end

  def user_in_club_event_except_for_regret_julien?
    if record.name == "Regretter de ne pas avoir recruté Julien"
      false
    else
      user_in_club_event?
    end
  end
end
