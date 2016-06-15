class IsaproneighborsController < ApplicationController
  before_action :set_isaproneighbor, only: [:show, :edit, :update, :destroy]

  # GET /isaproneighbors
  # GET /isaproneighbors.json
  def index
    @isaproneighbors = Isaproneighbor.all
  end

  # GET /isaproneighbors/1
  # GET /isaproneighbors/1.json
  def show
  end

  # GET /isaproneighbors/new
  def new
    @isaproneighbor = Isaproneighbor.new
  end

  # GET /isaproneighbors/1/edit
  def edit
  end

  # POST /isaproneighbors
  # POST /isaproneighbors.json
  def create
    @isaproneighbor = Isaproneighbor.new(isaproneighbor_params)

    respond_to do |format|
      if @isaproneighbor.save
        format.html { redirect_to @isaproneighbor, notice: 'Isaproneighbor was successfully created.' }
        format.json { render :show, status: :created, location: @isaproneighbor }
      else
        format.html { render :new }
        format.json { render json: @isaproneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isaproneighbors/1
  # PATCH/PUT /isaproneighbors/1.json
  def update
    respond_to do |format|
      if @isaproneighbor.update(isaproneighbor_params)
        format.html { redirect_to @isaproneighbor, notice: 'Isaproneighbor was successfully updated.' }
        format.json { render :show, status: :ok, location: @isaproneighbor }
      else
        format.html { render :edit }
        format.json { render json: @isaproneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isaproneighbors/1
  # DELETE /isaproneighbors/1.json
  def destroy
    @isaproneighbor.destroy
    respond_to do |format|
      format.html { redirect_to isaproneighbors_url, notice: 'Isaproneighbor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_isaproneighbor
      @isaproneighbor = Isaproneighbor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def isaproneighbor_params
      params.require(:isaproneighbor).permit(:neighbor)
    end
end
