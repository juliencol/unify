require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  
  include Pundit

  before_action :authenticate_user!
  before_action :set_bde
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "Désolé, tu n'as pas accès à cette page"
    redirect_to(root_path)
  end

  def disable_navbar
    @disable_navbar = true
  end

  def disable_footer
    @disable_footer = true
  end

  def set_bde
    @bde = Club.find_by("name ILIKE ?", "EXODUS BDE")
  end

  private
  
  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :promotion, :section, :family_id])
  end
end

