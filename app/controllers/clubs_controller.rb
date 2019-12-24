class ClubsController < ApplicationController
    before_action :authenticate_user!
    
    def calendar
    end 

    def index
        @clubs = Club.all
    end

    def show
        @club = Club.find(params[:id])
    end

    def bde
        @bde = Club.where(name: "Genesis BDE").take
    end
end
