class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def edit?
    is_user_profile
  end

  def update?
    is_user_profile
  end

  private

  def is_user_profile
    user == @user
  end
end