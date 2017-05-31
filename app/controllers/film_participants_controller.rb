class FilmParticipantsController < ApplicationController
  before_action :set_film_participant, only: [:show, :edit, :update, :destroy]

  # GET /film_participants
  # GET /film_participants.json
  def index
    @film_participants = FilmParticipant.all
  end

  # GET /film_participants/1
  # GET /film_participants/1.json
  def show
  end

  # GET /film_participants/new
  def new
    @film_participant = FilmParticipant.new
  end

  # GET /film_participants/1/edit
  def edit
  end

  # POST /film_participants
  # POST /film_participants.json
  def create
    @film_participant = FilmParticipant.new(film_participant_params)

    respond_to do |format|
      if @film_participant.save
        format.html { redirect_to @film_participant, notice: 'Film participant was successfully created.' }
        format.json { render :show, status: :created, location: @film_participant }
      else
        format.html { render :new }
        format.json { render json: @film_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /film_participants/1
  # PATCH/PUT /film_participants/1.json
  def update
    respond_to do |format|
      if @film_participant.update(film_participant_params)
        format.html { redirect_to @film_participant, notice: 'Film participant was successfully updated.' }
        format.json { render :show, status: :ok, location: @film_participant }
      else
        format.html { render :edit }
        format.json { render json: @film_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /film_participants/1
  # DELETE /film_participants/1.json
  def destroy
    @film_participant.destroy
    respond_to do |format|
      format.html { redirect_to film_participants_url, notice: 'Film participant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film_participant
      @film_participant = FilmParticipant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_participant_params
      params.require(:film_participant).permit(:role, :task, :film_id, :participant_id)
    end
end
