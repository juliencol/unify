class ErrorsController < ApplicationController
    skip_after_action :verify_authorized

    def show
      status_code = params[:code] || 500
      render status_code.to_s, status: status_code
    end
  
  end