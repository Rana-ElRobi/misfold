class DisjointneighborsController < ApplicationController
  before_action :set_disjointneighbor, only: [:show, :edit, :update, :destroy]

  # GET /disjointneighbors
  # GET /disjointneighbors.json
  def index
    @disjointneighbors = Disjointneighbor.all
  end

  # GET /disjointneighbors/1
  # GET /disjointneighbors/1.json
  def show
  end

  # GET /disjointneighbors/new
  def new
    @disjointneighbor = Disjointneighbor.new
  end

  # GET /disjointneighbors/1/edit
  def edit
  end

  # POST /disjointneighbors
  # POST /disjointneighbors.json
  def create
    @disjointneighbor = Disjointneighbor.new(disjointneighbor_params)

    respond_to do |format|
      if @disjointneighbor.save
        format.html { redirect_to @disjointneighbor, notice: 'Disjointneighbor was successfully created.' }
        format.json { render :show, status: :created, location: @disjointneighbor }
      else
        format.html { render :new }
        format.json { render json: @disjointneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disjointneighbors/1
  # PATCH/PUT /disjointneighbors/1.json
  def update
    respond_to do |format|
      if @disjointneighbor.update(disjointneighbor_params)
        format.html { redirect_to @disjointneighbor, notice: 'Disjointneighbor was successfully updated.' }
        format.json { render :show, status: :ok, location: @disjointneighbor }
      else
        format.html { render :edit }
        format.json { render json: @disjointneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disjointneighbors/1
  # DELETE /disjointneighbors/1.json
  def destroy
    @disjointneighbor.destroy
    respond_to do |format|
      format.html { redirect_to disjointneighbors_url, notice: 'Disjointneighbor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disjointneighbor
      @disjointneighbor = Disjointneighbor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disjointneighbor_params
      params.require(:disjointneighbor).permit(:neighbor)
    end
end
