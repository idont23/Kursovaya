class FilmGenresController < ApplicationController
  before_action :set_film_genre, only: [:show, :edit, :update, :destroy]

  # GET /film_genres
  # GET /film_genres.json
  def index
    @film_genres = FilmGenre.all
  end

  # GET /film_genres/1
  # GET /film_genres/1.json
  def show
  end

  # GET /film_genres/new
  def new
    @film_genre = FilmGenre.new
  end

  # GET /film_genres/1/edit
  def edit
  end

  # POST /film_genres
  # POST /film_genres.json
  def create
    @film_genre = FilmGenre.new(film_genre_params)

    respond_to do |format|
      if @film_genre.save
        format.html { redirect_to @film_genre, notice: 'Film genre was successfully created.' }
        format.json { render :show, status: :created, location: @film_genre }
      else
        format.html { render :new }
        format.json { render json: @film_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /film_genres/1
  # PATCH/PUT /film_genres/1.json
  def update
    respond_to do |format|
      if @film_genre.update(film_genre_params)
        format.html { redirect_to @film_genre, notice: 'Film genre was successfully updated.' }
        format.json { render :show, status: :ok, location: @film_genre }
      else
        format.html { render :edit }
        format.json { render json: @film_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /film_genres/1
  # DELETE /film_genres/1.json
  def destroy
    @film_genre.destroy
    respond_to do |format|
      format.html { redirect_to film_genres_url, notice: 'Film genre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film_genre
      @film_genre = FilmGenre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_genre_params
      params.require(:film_genre).permit(:film_id, :genre_id)
    end
end
