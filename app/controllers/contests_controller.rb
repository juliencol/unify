class ContestsController < ApplicationController
  def index
    @contests = policy_scope(Contest).sort_by(&:created_at).reverse
  end

  def show
    @contest = Contest.find(params[:id])
    authorize @contest
  end
end
