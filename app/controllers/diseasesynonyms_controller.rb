class DiseasesynonymsController < ApplicationController
  before_action :set_diseasesynonym, only: [:show, :edit, :update, :destroy]

  # GET /diseasesynonyms
  # GET /diseasesynonyms.json
  def index
    @diseasesynonyms = Diseasesynonym.all
  end

  # GET /diseasesynonyms/1
  # GET /diseasesynonyms/1.json
  def show
  end

  # GET /diseasesynonyms/new
  def new
    @diseasesynonym = Diseasesynonym.new
  end

  # GET /diseasesynonyms/1/edit
  def edit
  end

  # POST /diseasesynonyms
  # POST /diseasesynonyms.json
  def create
    @diseasesynonym = Diseasesynonym.new(diseasesynonym_params)

    respond_to do |format|
      if @diseasesynonym.save
        format.html { redirect_to @diseasesynonym, notice: 'Diseasesynonym was successfully created.' }
        format.json { render :show, status: :created, location: @diseasesynonym }
      else
        format.html { render :new }
        format.json { render json: @diseasesynonym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diseasesynonyms/1
  # PATCH/PUT /diseasesynonyms/1.json
  def update
    respond_to do |format|
      if @diseasesynonym.update(diseasesynonym_params)
        format.html { redirect_to @diseasesynonym, notice: 'Diseasesynonym was successfully updated.' }
        format.json { render :show, status: :ok, location: @diseasesynonym }
      else
        format.html { render :edit }
        format.json { render json: @diseasesynonym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diseasesynonyms/1
  # DELETE /diseasesynonyms/1.json
  def destroy
    @diseasesynonym.destroy
    respond_to do |format|
      format.html { redirect_to diseasesynonyms_url, notice: 'Diseasesynonym was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diseasesynonym
      @diseasesynonym = Diseasesynonym.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diseasesynonym_params
      params.require(:diseasesynonym).permit(:synonym)
    end
end
