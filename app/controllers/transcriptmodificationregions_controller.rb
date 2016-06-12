class TranscriptmodificationregionsController < ApplicationController
  before_action :set_transcriptmodificationregion, only: [:show, :edit, :update, :destroy]

  # GET /transcriptmodificationregions
  # GET /transcriptmodificationregions.json
  def index
    @transcriptmodificationregions = Transcriptmodificationregion.all
  end

  # GET /transcriptmodificationregions/1
  # GET /transcriptmodificationregions/1.json
  def show
  end

  # GET /transcriptmodificationregions/new
  def new
    @transcriptmodificationregion = Transcriptmodificationregion.new
  end

  # GET /transcriptmodificationregions/1/edit
  def edit
  end

  # POST /transcriptmodificationregions
  # POST /transcriptmodificationregions.json
  def create
    @transcriptmodificationregion = Transcriptmodificationregion.new(transcriptmodificationregion_params)

    respond_to do |format|
      if @transcriptmodificationregion.save
        format.html { redirect_to @transcriptmodificationregion, notice: 'Transcriptmodificationregion was successfully created.' }
        format.json { render :show, status: :created, location: @transcriptmodificationregion }
      else
        format.html { render :new }
        format.json { render json: @transcriptmodificationregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transcriptmodificationregions/1
  # PATCH/PUT /transcriptmodificationregions/1.json
  def update
    respond_to do |format|
      if @transcriptmodificationregion.update(transcriptmodificationregion_params)
        format.html { redirect_to @transcriptmodificationregion, notice: 'Transcriptmodificationregion was successfully updated.' }
        format.json { render :show, status: :ok, location: @transcriptmodificationregion }
      else
        format.html { render :edit }
        format.json { render json: @transcriptmodificationregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transcriptmodificationregions/1
  # DELETE /transcriptmodificationregions/1.json
  def destroy
    @transcriptmodificationregion.destroy
    respond_to do |format|
      format.html { redirect_to transcriptmodificationregions_url, notice: 'Transcriptmodificationregion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transcriptmodificationregion
      @transcriptmodificationregion = Transcriptmodificationregion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transcriptmodificationregion_params
      params.require(:transcriptmodificationregion).permit(:start, :end, :modification)
    end
end
