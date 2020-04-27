class ContestsController < ApplicationController
  def index
    @contests = policy_scope(Contest)
  end

   def show
    @contest = Contest.find(params[:id])
    authorize @contest
  end
end
