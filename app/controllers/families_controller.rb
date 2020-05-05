class FamiliesController < ApplicationController

  private

  def set_params
    params.require(:family).permit( :id, :name, :banner)
  end
end
