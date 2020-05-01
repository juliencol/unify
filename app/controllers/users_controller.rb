class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.events.includes(:club, :themes)
    authorize @user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    @user.update(set_params)
    authorize @user
    redirect_to user_path(@user)
  end
  
  def register_to_event
    @event = Event.find(params[:event_id])
    authorize @event
    if current_user.events.include? @event
      current_user.events.delete(@event)
      flash[:notice] = "Inscription annulée"
      redirect_to event_path(@event)
    else
      current_user.events << @event
      flash[:notice] = "Inscription réussie"
      redirect_to event_path(@event)
    end
  end
  
  private

  def set_params
    params.require(:user).permit(:id, :email, :first_name, :last_name, :profile_picture, :promotion, :section, :classe, :bio, :snapchat_url, :instagram_url, :linkedin_url, :twitter_url)
  end
end