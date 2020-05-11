class EventsController < ApplicationController
  before_action :set_club, only: [:new, :create]

  def index
    @events = policy_scope(Event.where(is_pinned: false)).includes(:club, :themes).sort_by(&:created_at).reverse
    @pinned_events = policy_scope(Event.where(is_pinned: true)).includes(:club, :themes).sort_by(&:created_at).reverse
    @themes = Theme.all.sort_by { |theme| theme[:title] }
    @clubs = Club.all.sort_by { |club| club[:name] }
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @events = Event.where("name ILIKE ?", "%#{@name}%").includes(:users).sort_by(&:created_at).reverse
      @pinned_events = policy_scope(Event.where(is_pinned: true)).includes(:users).where("name ILIKE ?", "%#{@name}%").sort_by(&:created_at).reverse
    end
  end

  def show
    @event = Event.find(params[:id])
    @users = @event.users
    authorize @event
    @marker = { lat: @event.latitude, lng: @event.longitude }
  end
  
  def new
    @event = @club.events.build
    @themes = Theme.all.sort_by{ |theme| theme[:title] }
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
      flash[:notice] = "Oups, un problème est survenu lors de la modification de l'événement"
      render "edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    @event.destroy
    flash[:notice] = "Votre événement a été supprimé avec succès"
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


