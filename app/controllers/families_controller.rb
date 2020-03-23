class FamiliesController < ApplicationController

  private

  def set_params
    params.require(:family).permit( :id, :name, :banner, user_attributes: [:id, :email, :first_name, :last_name, :profile_picture, :promotion, :section, :classe, :is_ndc, :admin] )
  end
end
