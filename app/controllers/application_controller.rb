class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def disable_navbar
    @disable_navbar = true
  end
end

