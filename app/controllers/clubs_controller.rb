class ClubsController < ApplicationController
    def index
        @clubs = policy_scope(Club).sort_by{ |club| club[:name] }
        @bde = Club.where("name ILIKE ?", "EXODUS BDE")
    end
    
    def show
        @club = Club.find(params[:id])
        authorize @club
    end

    def edit
        @club = Club.find(params[:id])
        authorize @club
    end
    
    def update
        @club = Club.find(params[:id])
        authorize @club
        if @club.update(set_params)
            flash[:notice] = "#{@club.name} a été modifié avec succès"
            redirect_to club_path(@club)
        else
            render "edit"
        end
    end

    def bde
        @club = Club.where("name ILIKE ?", "EXODUS BDE").take
        authorize @club
    end

    def members
        @club = Club.find(params[:club_id])
        authorize @club
    end

    def partners 
        @club = Club.where("name ILIKE ?", "EXODUS BDE").take
        authorize @club
    end

    def project 
        @club = Club.where("name ILIKE ?", "EXODUS BDE").take
        authorize @club
    end

    private

    def set_params
        params.require(:club).permit(:name, :logo, :description,:website_url, :instagram_url, :linkedin_url, :creation_date)
    end
end
