class ClubsController < ApplicationController
    def index
        @clubs = policy_scope(Club)
        @bde = Club.where("name ILIKE ?", "EXODUS BDE").take
    end
    
    def show
        @club = Club.find(params[:id])
        authorize @club
        @bde = Club.where("name ILIKE ?", "EXODUS BDE").take
    end

    def edit
        @club = Club.find(params[:id])
        authorize @club
    end
    
    def update
        @club = Club.find(params[:id])
        authorize @club
        @club.update(set_params)
        redirect_to clubs_path
    end

    def bde
        @bde = Club.where("name ILIKE ?", "EXODUS BDE").take
        authorize @bde
    end

    def calendar
    end 

    def members
        @club = Club.find(params[:club_id])
        authorize @club
    end

    private

    def set_params
        params.require(:club).permit(:name, :logo, :description,:website_url, :instagram_url, :linkedin_url, :creation_date)
    end
end