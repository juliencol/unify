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
    update?
  end

  def update?
    user_in_club?
  end

  def manage_accesses?
    user_in_club?
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

  # def user_admin_in_club?
  #   user.user_clubs.each do |club|
  #     return true if club.admin and club.club_id == record.id
  #   end
  #   false
  # end

end
