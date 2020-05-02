class ContestPolicy < ApplicationPolicy
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

  def quizz?
    user_already_submitted_quizz
  end

  def send_quizz?
    user_already_submitted_quizz
  end

  def get_winner?
    user.super_admin
  end

  def remove_winner?
    user.super_admin
  end

  private

  def user_already_submitted_quizz
    !record.users.include? user
  end
end