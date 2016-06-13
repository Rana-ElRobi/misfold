class TypedefinitionproteinneighborsController < ApplicationController
  before_action :set_typedefinitionproteinneighbor, only: [:show, :edit, :update, :destroy]

  # GET /typedefinitionproteinneighbors
  # GET /typedefinitionproteinneighbors.json
  def index
    @typedefinitionproteinneighbors = Typedefinitionproteinneighbor.all
  end

  # GET /typedefinitionproteinneighbors/1
  # GET /typedefinitionproteinneighbors/1.json
  def show
  end

  # GET /typedefinitionproteinneighbors/new
  def new
    @typedefinitionproteinneighbor = Typedefinitionproteinneighbor.new
  end

  # GET /typedefinitionproteinneighbors/1/edit
  def edit
  end

  # POST /typedefinitionproteinneighbors
  # POST /typedefinitionproteinneighbors.json
  def create
    @typedefinitionproteinneighbor = Typedefinitionproteinneighbor.new(typedefinitionproteinneighbor_params)

    respond_to do |format|
      if @typedefinitionproteinneighbor.save
        format.html { redirect_to @typedefinitionproteinneighbor, notice: 'Typedefinitionproteinneighbor was successfully created.' }
        format.json { render :show, status: :created, location: @typedefinitionproteinneighbor }
      else
        format.html { render :new }
        format.json { render json: @typedefinitionproteinneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typedefinitionproteinneighbors/1
  # PATCH/PUT /typedefinitionproteinneighbors/1.json
  def update
    respond_to do |format|
      if @typedefinitionproteinneighbor.update(typedefinitionproteinneighbor_params)
        format.html { redirect_to @typedefinitionproteinneighbor, notice: 'Typedefinitionproteinneighbor was successfully updated.' }
        format.json { render :show, status: :ok, location: @typedefinitionproteinneighbor }
      else
        format.html { render :edit }
        format.json { render json: @typedefinitionproteinneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typedefinitionproteinneighbors/1
  # DELETE /typedefinitionproteinneighbors/1.json
  def destroy
    @typedefinitionproteinneighbor.destroy
    respond_to do |format|
      format.html { redirect_to typedefinitionproteinneighbors_url, notice: 'Typedefinitionproteinneighbor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typedefinitionproteinneighbor
      @typedefinitionproteinneighbor = Typedefinitionproteinneighbor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typedefinitionproteinneighbor_params
      params.require(:typedefinitionproteinneighbor).permit(:neighbor)
    end
end
