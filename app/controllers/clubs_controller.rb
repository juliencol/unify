class ClubsController < ApplicationController
    def index
        @clubs = Club.all
        @bde = Club.where("name = ?", "%{Genesis BDE}%").take
        
    end
    
    def show
        @club = Club.find(params[:id])
    end

    def edit
        @club = Club.find(params[:id])
    end
    
    def update
        @club = Club.find(params[:id])
        @club.update(set_params)
        redirect_to clubs_path
    end

    def bde
        @bde = Club.where("name = ?", "%{Genesis BDE}%").take       
    end

    def calendar
    end 

    def members
        @club = Club.find(params[:club_id])
    end

    def subscribe
    end
  
    def apply
        @club = Club.find(params[:club_id])
    end

    private

    def set_params
        params.require(:club).permit(:name, :logo, :description,:website_url, :instagram_url, :linkedin_url, :creation_date)
    end
end