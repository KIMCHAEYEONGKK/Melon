class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update destroy ]

  # GET /artists or /artists.json
  def index
    @artists = Artist.all
	@payuser = Payuser.new
  end

  # GET /artists/1 or /artists/1.json
  def show
	  @payuser = Payuser.new
  end
  def show_track
	  @payuser = Payuser.new
	  @artist = Artist.find(params[:id])
	  @albums = Album.all
	  @ar_albums = Album.where(artist_id: @artist.id)
	  @tracks = Track.all
  end
  
  def show_album
	  @payuser = Payuser.new
	  @artist = Artist.find(params[:id])
	  @albums = Album.all
	  @ar_albums = Album.where(artist_id: @artist.id) 
  end
  def show_video
	  @payuser = Payuser.new
	  @artist = Artist.find(params[:id])
	  @albums = Album.all
	  @ar_albums = Album.where(artist_id: @artist.id)
	  @tracks = Track.all
	  @videos = Video.all
		
	  if user_signed_in? 
		@pay_t = Payuser.where(user_id: current_user.id).size > 0
	  end
  end
  # GET /artists/new
  def new
    @artist = Artist.new
	  @artist = Artist.find(params[:id])
  end

  # GET /artists/1/edit
  def edit
  end

  # POST /artists or /artists.json
  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save
        format.html { redirect_to artist_url(@artist), notice: "Artist was successfully created." }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1 or /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to artist_url(@artist), notice: "Artist was successfully updated." }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1 or /artists/1.json
  def destroy
    @artist.destroy

    respond_to do |format|
      format.html { redirect_to artists_url, notice: "Artist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_params
      params.require(:artist).permit(:debut_day, :birth_day, :intro, :agency, :nationality,   :activity_name,:real_name,:sex, :activity_type, :nickname, :award_history, :link, :genre)
    end
end