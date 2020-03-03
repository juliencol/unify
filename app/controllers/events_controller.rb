class EventsController < ApplicationController
  def index
    @events = Event.all
    @themes = Theme.all
    @clubs = Club.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @events = Event.where("name ILIKE ?", "%#{@name}%") # escape SQL injections with '?'
    end
  end

  def show
    @event = Event.find(params[:id])
    
    if !@event.latitude.nil? &&  !@event.longitude.nil?
      @marker = {
        lat: @event.latitude,
        lng: @event.longitude,
      }
    else
      @marker = nil 
    end
  end
  
  def new
    @event = Event.new
    @themes = Theme.all
  end

  def create
    @club = Club.find(params[:id])
    @event = Event.new(set_params)
    @event.club = @club
    if @event.save
      redirect_to club_path(@club)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(events_params)
      redirect_to @event
    else
      render "edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def set_params
    params.require(:event).permit(:name, :short_description, :long_description, :image, :date, :price, :location, :banner, :latitude, :longitude, :is_free)
  end
end
