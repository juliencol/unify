class ClubsController < ApplicationController
    before_action :authenticate_user!
    
    def calendar
    end 

    def index
        @clubs = Club.all
        @bde = Club.where(name: "Genesis BDE").take
    end

    def show
        @club = Club.find(params[:id])
    end

    def bde
        @bde = Club.where(name: "Genesis BDE").take
    end
end
