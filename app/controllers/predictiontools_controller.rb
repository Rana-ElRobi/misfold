class PredictiontoolsController < ApplicationController
  before_action :set_predictiontool, only: [:show, :edit, :update, :destroy]

  # GET /predictiontools
  # GET /predictiontools.json
  def index
    @predictiontools = Predictiontool.all
  end

  # GET /predictiontools/1
  # GET /predictiontools/1.json
  def show
  end

  # GET /predictiontools/new
  def new
    @predictiontool = Predictiontool.new
  end

  # GET /predictiontools/1/edit
  def edit
  end

  # POST /predictiontools
  # POST /predictiontools.json
  def create
    @predictiontool = Predictiontool.new(predictiontool_params)

    respond_to do |format|
      if @predictiontool.save
        format.html { redirect_to @predictiontool, notice: 'Predictiontool was successfully created.' }
        format.json { render :show, status: :created, location: @predictiontool }
      else
        format.html { render :new }
        format.json { render json: @predictiontool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predictiontools/1
  # PATCH/PUT /predictiontools/1.json
  def update
    respond_to do |format|
      if @predictiontool.update(predictiontool_params)
        format.html { redirect_to @predictiontool, notice: 'Predictiontool was successfully updated.' }
        format.json { render :show, status: :ok, location: @predictiontool }
      else
        format.html { render :edit }
        format.json { render json: @predictiontool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predictiontools/1
  # DELETE /predictiontools/1.json
  def destroy
    @predictiontool.destroy
    respond_to do |format|
      format.html { redirect_to predictiontools_url, notice: 'Predictiontool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_predictiontool
      @predictiontool = Predictiontool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def predictiontool_params
      params.require(:predictiontool).permit(:name)
    end
end
