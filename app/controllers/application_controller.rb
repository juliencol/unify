require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  include PublicActivity::StoreController

  before_action :authenticate_user!

  def disable_navbar
    @disable_navbar = true
  end

  def disable_footer
    @disable_footer = true
  end
end

