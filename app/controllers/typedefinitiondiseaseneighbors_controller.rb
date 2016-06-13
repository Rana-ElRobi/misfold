class TypedefinitiondiseaseneighborsController < ApplicationController
  before_action :set_typedefinitiondiseaseneighbor, only: [:show, :edit, :update, :destroy]

  # GET /typedefinitiondiseaseneighbors
  # GET /typedefinitiondiseaseneighbors.json
  def index
    @typedefinitiondiseaseneighbors = Typedefinitiondiseaseneighbor.all
  end

  # GET /typedefinitiondiseaseneighbors/1
  # GET /typedefinitiondiseaseneighbors/1.json
  def show
  end

  # GET /typedefinitiondiseaseneighbors/new
  def new
    @typedefinitiondiseaseneighbor = Typedefinitiondiseaseneighbor.new
  end

  # GET /typedefinitiondiseaseneighbors/1/edit
  def edit
  end

  # POST /typedefinitiondiseaseneighbors
  # POST /typedefinitiondiseaseneighbors.json
  def create
    @typedefinitiondiseaseneighbor = Typedefinitiondiseaseneighbor.new(typedefinitiondiseaseneighbor_params)

    respond_to do |format|
      if @typedefinitiondiseaseneighbor.save
        format.html { redirect_to @typedefinitiondiseaseneighbor, notice: 'Typedefinitiondiseaseneighbor was successfully created.' }
        format.json { render :show, status: :created, location: @typedefinitiondiseaseneighbor }
      else
        format.html { render :new }
        format.json { render json: @typedefinitiondiseaseneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typedefinitiondiseaseneighbors/1
  # PATCH/PUT /typedefinitiondiseaseneighbors/1.json
  def update
    respond_to do |format|
      if @typedefinitiondiseaseneighbor.update(typedefinitiondiseaseneighbor_params)
        format.html { redirect_to @typedefinitiondiseaseneighbor, notice: 'Typedefinitiondiseaseneighbor was successfully updated.' }
        format.json { render :show, status: :ok, location: @typedefinitiondiseaseneighbor }
      else
        format.html { render :edit }
        format.json { render json: @typedefinitiondiseaseneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typedefinitiondiseaseneighbors/1
  # DELETE /typedefinitiondiseaseneighbors/1.json
  def destroy
    @typedefinitiondiseaseneighbor.destroy
    respond_to do |format|
      format.html { redirect_to typedefinitiondiseaseneighbors_url, notice: 'Typedefinitiondiseaseneighbor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typedefinitiondiseaseneighbor
      @typedefinitiondiseaseneighbor = Typedefinitiondiseaseneighbor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typedefinitiondiseaseneighbor_params
      params.require(:typedefinitiondiseaseneighbor).permit(:neighbor)
    end
end
