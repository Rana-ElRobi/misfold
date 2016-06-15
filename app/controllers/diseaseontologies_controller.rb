class DiseaseontologiesController < ApplicationController
  before_action :set_diseaseontology, only: [:show, :edit, :update, :destroy]

  # GET /diseaseontologies
  # GET /diseaseontologies.json
  def index
    @diseaseontologies = Diseaseontology.all
  end

  # GET /diseaseontologies/1
  # GET /diseaseontologies/1.json
  def show
  end

  # GET /diseaseontologies/new
  def new
    @diseaseontology = Diseaseontology.new
  end

  # GET /diseaseontologies/1/edit
  def edit
  end

  # POST /diseaseontologies
  # POST /diseaseontologies.json
  def create
    @diseaseontology = Diseaseontology.new(diseaseontology_params)

    respond_to do |format|
      if @diseaseontology.save
        format.html { redirect_to @diseaseontology, notice: 'Diseaseontology was successfully created.' }
        format.json { render :show, status: :created, location: @diseaseontology }
      else
        format.html { render :new }
        format.json { render json: @diseaseontology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diseaseontologies/1
  # PATCH/PUT /diseaseontologies/1.json
  def update
    respond_to do |format|
      if @diseaseontology.update(diseaseontology_params)
        format.html { redirect_to @diseaseontology, notice: 'Diseaseontology was successfully updated.' }
        format.json { render :show, status: :ok, location: @diseaseontology }
      else
        format.html { render :edit }
        format.json { render json: @diseaseontology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diseaseontologies/1
  # DELETE /diseaseontologies/1.json
  def destroy
    @diseaseontology.destroy
    respond_to do |format|
      format.html { redirect_to diseaseontologies_url, notice: 'Diseaseontology was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diseaseontology
      @diseaseontology = Diseaseontology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diseaseontology_params
      params.require(:diseaseontology).permit(:doid, :name, :alt_id, :definition, :subset, :synonym, :xref, :created_by, :creation_date, :url)
    end
end
