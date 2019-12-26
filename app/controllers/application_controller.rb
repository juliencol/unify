class ApplicationController < ActionController::Base
  include PublicActivity::StoreController

  before_action :authenticate_user!

  def disable_navbar
    @disable_navbar = true
  end

  def disable_footer
    @disable_footer = true
  end
end

