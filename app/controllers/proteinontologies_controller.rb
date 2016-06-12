class ProteinontologiesController < ApplicationController
  before_action :set_proteinontology, only: [:show, :edit, :update, :destroy]

  # GET /proteinontologies
  # GET /proteinontologies.json
  def index
    @proteinontologies = Proteinontology.all
  end

  # GET /proteinontologies/1
  # GET /proteinontologies/1.json
  def show
  end

  # GET /proteinontologies/new
  def new
    @proteinontology = Proteinontology.new
  end

  # GET /proteinontologies/1/edit
  def edit
  end

  # POST /proteinontologies
  # POST /proteinontologies.json
  def create
    @proteinontology = Proteinontology.new(proteinontology_params)

    respond_to do |format|
      if @proteinontology.save
        format.html { redirect_to @proteinontology, notice: 'Proteinontology was successfully created.' }
        format.json { render :show, status: :created, location: @proteinontology }
      else
        format.html { render :new }
        format.json { render json: @proteinontology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proteinontologies/1
  # PATCH/PUT /proteinontologies/1.json
  def update
    respond_to do |format|
      if @proteinontology.update(proteinontology_params)
        format.html { redirect_to @proteinontology, notice: 'Proteinontology was successfully updated.' }
        format.json { render :show, status: :ok, location: @proteinontology }
      else
        format.html { render :edit }
        format.json { render json: @proteinontology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proteinontologies/1
  # DELETE /proteinontologies/1.json
  def destroy
    @proteinontology.destroy
    respond_to do |format|
      format.html { redirect_to proteinontologies_url, notice: 'Proteinontology was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proteinontology
      @proteinontology = Proteinontology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proteinontology_params
      params.require(:proteinontology).permit(:prid, :name, :definition, :comment, :synonym, :namespace, :xref, :is_obsolete)
    end
end
