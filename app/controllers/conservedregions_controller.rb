class ConservedregionsController < ApplicationController
  before_action :set_conservedregion, only: [:show, :edit, :update, :destroy]

  # GET /conservedregions
  # GET /conservedregions.json
  def index
    @conservedregions = Conservedregion.all
  end

  # GET /conservedregions/1
  # GET /conservedregions/1.json
  def show
  end

  # GET /conservedregions/new
  def new
    @conservedregion = Conservedregion.new
  end

  # GET /conservedregions/1/edit
  def edit
  end

  # POST /conservedregions
  # POST /conservedregions.json
  def create
    @conservedregion = Conservedregion.new(conservedregion_params)

    respond_to do |format|
      if @conservedregion.save
        format.html { redirect_to @conservedregion, notice: 'Conservedregion was successfully created.' }
        format.json { render :show, status: :created, location: @conservedregion }
      else
        format.html { render :new }
        format.json { render json: @conservedregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conservedregions/1
  # PATCH/PUT /conservedregions/1.json
  def update
    respond_to do |format|
      if @conservedregion.update(conservedregion_params)
        format.html { redirect_to @conservedregion, notice: 'Conservedregion was successfully updated.' }
        format.json { render :show, status: :ok, location: @conservedregion }
      else
        format.html { render :edit }
        format.json { render json: @conservedregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conservedregions/1
  # DELETE /conservedregions/1.json
  def destroy
    @conservedregion.destroy
    respond_to do |format|
      format.html { redirect_to conservedregions_url, notice: 'Conservedregion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conservedregion
      @conservedregion = Conservedregion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conservedregion_params
      params.require(:conservedregion).permit(:name, :score, :start, :end, :type)
    end
end
