class IsadiseaseneighborsController < ApplicationController
  before_action :set_isadiseaseneighbor, only: [:show, :edit, :update, :destroy]

  # GET /isadiseaseneighbors
  # GET /isadiseaseneighbors.json
  def index
    @isadiseaseneighbors = Isadiseaseneighbor.all
  end

  # GET /isadiseaseneighbors/1
  # GET /isadiseaseneighbors/1.json
  def show
  end

  # GET /isadiseaseneighbors/new
  def new
    @isadiseaseneighbor = Isadiseaseneighbor.new
  end

  # GET /isadiseaseneighbors/1/edit
  def edit
  end

  # POST /isadiseaseneighbors
  # POST /isadiseaseneighbors.json
  def create
    @isadiseaseneighbor = Isadiseaseneighbor.new(isadiseaseneighbor_params)

    respond_to do |format|
      if @isadiseaseneighbor.save
        format.html { redirect_to @isadiseaseneighbor, notice: 'Isadiseaseneighbor was successfully created.' }
        format.json { render :show, status: :created, location: @isadiseaseneighbor }
      else
        format.html { render :new }
        format.json { render json: @isadiseaseneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isadiseaseneighbors/1
  # PATCH/PUT /isadiseaseneighbors/1.json
  def update
    respond_to do |format|
      if @isadiseaseneighbor.update(isadiseaseneighbor_params)
        format.html { redirect_to @isadiseaseneighbor, notice: 'Isadiseaseneighbor was successfully updated.' }
        format.json { render :show, status: :ok, location: @isadiseaseneighbor }
      else
        format.html { render :edit }
        format.json { render json: @isadiseaseneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isadiseaseneighbors/1
  # DELETE /isadiseaseneighbors/1.json
  def destroy
    @isadiseaseneighbor.destroy
    respond_to do |format|
      format.html { redirect_to isadiseaseneighbors_url, notice: 'Isadiseaseneighbor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_isadiseaseneighbor
      @isadiseaseneighbor = Isadiseaseneighbor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def isadiseaseneighbor_params
      params.require(:isadiseaseneighbor).permit(:neighbor)
    end
end
