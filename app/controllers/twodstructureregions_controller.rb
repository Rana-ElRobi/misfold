class TwodstructureregionsController < ApplicationController
  before_action :set_twodstructureregion, only: [:show, :edit, :update, :destroy]

  # GET /twodstructureregions
  # GET /twodstructureregions.json
  def index
    @twodstructureregions = Twodstructureregion.all
  end

  # GET /twodstructureregions/1
  # GET /twodstructureregions/1.json
  def show
  end

  # GET /twodstructureregions/new
  def new
    @twodstructureregion = Twodstructureregion.new
  end

  # GET /twodstructureregions/1/edit
  def edit
  end

  # POST /twodstructureregions
  # POST /twodstructureregions.json
  def create
    @twodstructureregion = Twodstructureregion.new(twodstructureregion_params)

    respond_to do |format|
      if @twodstructureregion.save
        format.html { redirect_to @twodstructureregion, notice: 'Twodstructureregion was successfully created.' }
        format.json { render :show, status: :created, location: @twodstructureregion }
      else
        format.html { render :new }
        format.json { render json: @twodstructureregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twodstructureregions/1
  # PATCH/PUT /twodstructureregions/1.json
  def update
    respond_to do |format|
      if @twodstructureregion.update(twodstructureregion_params)
        format.html { redirect_to @twodstructureregion, notice: 'Twodstructureregion was successfully updated.' }
        format.json { render :show, status: :ok, location: @twodstructureregion }
      else
        format.html { render :edit }
        format.json { render json: @twodstructureregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twodstructureregions/1
  # DELETE /twodstructureregions/1.json
  def destroy
    @twodstructureregion.destroy
    respond_to do |format|
      format.html { redirect_to twodstructureregions_url, notice: 'Twodstructureregion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twodstructureregion
      @twodstructureregion = Twodstructureregion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twodstructureregion_params
      params.require(:twodstructureregion).permit(:start, :end, :regiontype)
    end
end
