class EventsController < ApplicationController
    def index
        @events = Event.all
        @clubs = Club.all
    end
end
