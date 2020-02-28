class EventsController < ApplicationController
    def index
        @events = Event.all
        @themes = Theme.all
        @clubs = Club.all
        @search = params["search"]
        if @search.present?
          @name = @search["name"]
          @events = Event.where("name ILIKE ?", "%#{@name}%") #be careful while using ILIKE, should testing an SQL injection on the URL as SELECT "events".* FROM "events".WHERE events =""
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
