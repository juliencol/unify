class ClubsController < ApplicationController
    def index
        @clubs = policy_scope(Club).sort_by{ |club| club[:name] }
    end
    
    def show
        @club = Club.find(params[:id])
        @events = @club.events.includes(:themes)
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
        @club = @bde
        @events = @bde.events.includes(:themes)
        authorize @club
    end

    def members
        @club = Club.find(params[:club_id])
        authorize @club
    end

    def partners 
        @club = @bde
        authorize @club
    end

    def project 
        @club = @bde
        authorize @club
    end

    private

    def set_params
        params.require(:club).permit(:name, :logo, :description,:website_url, :instagram_url, :facebook_url, :linkedin_url, :discord_url, :creation_date)
    end
end
