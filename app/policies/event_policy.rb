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
    user.super_admin
  end

  def edit?
   user.super_admin
  end

  def update?
    user.super_admin
  end

  def destroy?
    user.super_admin
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
end
