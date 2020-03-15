class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
    @themes = Theme.all
    @clubs = Club.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @events = Event.where("name ILIKE ?", "%#{@name}%") 
    end
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
    @marker = {
      lat: @event.latitude,
      lng: @event.longitude,
    }
  end
  
  def new
    @event = Event.new
    @themes = Theme.all
    authorize @event
  end

  def create
    @event = Club.find(params[:id]).build(set_params)
    authorize @event
    if @event.save
      redirect_to club_path(@club)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    authorize @event
    if @event.update(events_params)
      redirect_to @event
    else
      render "edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    @event.destroy
    redirect_to root_path
  end

  private

  def set_params
    params.require(:event).permit(:name, :short_description, :long_description, :image, :date, :price, :location, :banner, :latitude, :longitude, :is_free)
  end
end
