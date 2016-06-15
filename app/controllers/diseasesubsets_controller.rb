class DiseasesubsetsController < ApplicationController
  before_action :set_diseasesubset, only: [:show, :edit, :update, :destroy]

  # GET /diseasesubsets
  # GET /diseasesubsets.json
  def index
    @diseasesubsets = Diseasesubset.all
  end

  # GET /diseasesubsets/1
  # GET /diseasesubsets/1.json
  def show
  end

  # GET /diseasesubsets/new
  def new
    @diseasesubset = Diseasesubset.new
  end

  # GET /diseasesubsets/1/edit
  def edit
  end

  # POST /diseasesubsets
  # POST /diseasesubsets.json
  def create
    @diseasesubset = Diseasesubset.new(diseasesubset_params)

    respond_to do |format|
      if @diseasesubset.save
        format.html { redirect_to @diseasesubset, notice: 'Diseasesubset was successfully created.' }
        format.json { render :show, status: :created, location: @diseasesubset }
      else
        format.html { render :new }
        format.json { render json: @diseasesubset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diseasesubsets/1
  # PATCH/PUT /diseasesubsets/1.json
  def update
    respond_to do |format|
      if @diseasesubset.update(diseasesubset_params)
        format.html { redirect_to @diseasesubset, notice: 'Diseasesubset was successfully updated.' }
        format.json { render :show, status: :ok, location: @diseasesubset }
      else
        format.html { render :edit }
        format.json { render json: @diseasesubset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diseasesubsets/1
  # DELETE /diseasesubsets/1.json
  def destroy
    @diseasesubset.destroy
    respond_to do |format|
      format.html { redirect_to diseasesubsets_url, notice: 'Diseasesubset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diseasesubset
      @diseasesubset = Diseasesubset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diseasesubset_params
      params.require(:diseasesubset).permit(:subset)
    end
end
