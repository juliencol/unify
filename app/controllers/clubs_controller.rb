class ClubsController < ApplicationController
    before_action :authenticate_user!

    def index
        @clubs = Club.all
    end

    def calendar
        @clubs = Club.all
    end 
end
