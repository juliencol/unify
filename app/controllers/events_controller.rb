class EventsController < ApplicationController
    def index
        @events = Event.all
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
        lng: @event.longitude
      }
    end
end
