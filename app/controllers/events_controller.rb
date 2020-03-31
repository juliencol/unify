class EventsController < ApplicationController
  before_action :set_club, only: [:new, :create]

  def index
    @events = policy_scope(Event)
    @themes = Theme.all
    @clubs = Club.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @events = Event.where("name ILIKE ?", "%#{@name}%") 
    end
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
    @marker = {
      lat: @event.latitude,
      lng: @event.longitude,
    }
  end
  
  def new
    @event = @club.events.build
    @themes = Theme.all
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.club = @club
    authorize @event
    if @event.save
      flash[:notice] = "Votre nouvel événement a été ajouté avec succès"
      redirect_to club_path(@club)
    else
      flash[:notice] = "Oups, un problème est survenu lors de la création de l'événement"
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    @club = @event.club
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    @club = @event.club
    authorize @event
    if @event.update(event_params)
      flash[:notice] = "Votre événement a été modifié avec succès"
      redirect_to @event
    else
      render "edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    @event.destroy
    flash[:notice] = "Votre événement a été supprimé"
    redirect_to club_path(@event.club)
  end

  private

  def event_params
    params.require(:event).permit(:name, :short_description, :long_description, :image, :date, :price, :location, :banner, :latitude, :longitude)
  end

  def set_club
    @club = Club.find(params[:club_id])
  end
end


