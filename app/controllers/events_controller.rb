class EventsController < ApplicationController
  def index
    @events = Event.all
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
    @marker = {
      lat: @event.latitude,
      lng: @event.longitude,
    }
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

  def events_params
    params.require(:event).permit(:name, :short_description, :long_description,
                                  :date, :image, :banner, :is_free, :latitude, :longitude)
  end
end
