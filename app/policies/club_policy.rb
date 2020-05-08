class ClubPolicy < ApplicationPolicy
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

  def edit?
    is_super_admin?
  end

  def update?
    is_super_admin?
  end

  def manage_accesses?
    is_super_admin?
  end

  def members?
    true
  end

  def bde?
    true
  end

  def project?
    true
  end

  def partners?
    true
  end

  private

  def user_in_club?
    record.users.include? user
  end
  
  def is_super_admin?
    user.super_admin
  end

end
