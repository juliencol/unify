class EventsController < ApplicationController
    before_action :authenticate_user!

    def index
        @events = Event.all
        @clubs = Club.all
    end
end
