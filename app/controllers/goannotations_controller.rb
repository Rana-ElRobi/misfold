class GoannotationsController < ApplicationController
  before_action :set_goannotation, only: [:show, :edit, :update, :destroy]

  # GET /goannotations
  # GET /goannotations.json
  def index
    @goannotations = Goannotation.all
  end

  # GET /goannotations/1
  # GET /goannotations/1.json
  def show
  end

  # GET /goannotations/new
  def new
    @goannotation = Goannotation.new
  end

  # GET /goannotations/1/edit
  def edit
  end

  # POST /goannotations
  # POST /goannotations.json
  def create
    @goannotation = Goannotation.new(goannotation_params)

    respond_to do |format|
      if @goannotation.save
        format.html { redirect_to @goannotation, notice: 'Goannotation was successfully created.' }
        format.json { render :show, status: :created, location: @goannotation }
      else
        format.html { render :new }
        format.json { render json: @goannotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goannotations/1
  # PATCH/PUT /goannotations/1.json
  def update
    respond_to do |format|
      if @goannotation.update(goannotation_params)
        format.html { redirect_to @goannotation, notice: 'Goannotation was successfully updated.' }
        format.json { render :show, status: :ok, location: @goannotation }
      else
        format.html { render :edit }
        format.json { render json: @goannotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goannotations/1
  # DELETE /goannotations/1.json
  def destroy
    @goannotation.destroy
    respond_to do |format|
      format.html { redirect_to goannotations_url, notice: 'Goannotation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goannotation
      @goannotation = Goannotation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goannotation_params
      params.require(:goannotation).permit(:annotate)
    end
end
