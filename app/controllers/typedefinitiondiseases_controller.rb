class TypedefinitiondiseasesController < ApplicationController
  before_action :set_typedefinitiondisease, only: [:show, :edit, :update, :destroy]

  # GET /typedefinitiondiseases
  # GET /typedefinitiondiseases.json
  def index
    @typedefinitiondiseases = Typedefinitiondisease.all
  end

  # GET /typedefinitiondiseases/1
  # GET /typedefinitiondiseases/1.json
  def show
  end

  # GET /typedefinitiondiseases/new
  def new
    @typedefinitiondisease = Typedefinitiondisease.new
  end

  # GET /typedefinitiondiseases/1/edit
  def edit
  end

  # POST /typedefinitiondiseases
  # POST /typedefinitiondiseases.json
  def create
    @typedefinitiondisease = Typedefinitiondisease.new(typedefinitiondisease_params)

    respond_to do |format|
      if @typedefinitiondisease.save
        format.html { redirect_to @typedefinitiondisease, notice: 'Typedefinitiondisease was successfully created.' }
        format.json { render :show, status: :created, location: @typedefinitiondisease }
      else
        format.html { render :new }
        format.json { render json: @typedefinitiondisease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typedefinitiondiseases/1
  # PATCH/PUT /typedefinitiondiseases/1.json
  def update
    respond_to do |format|
      if @typedefinitiondisease.update(typedefinitiondisease_params)
        format.html { redirect_to @typedefinitiondisease, notice: 'Typedefinitiondisease was successfully updated.' }
        format.json { render :show, status: :ok, location: @typedefinitiondisease }
      else
        format.html { render :edit }
        format.json { render json: @typedefinitiondisease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typedefinitiondiseases/1
  # DELETE /typedefinitiondiseases/1.json
  def destroy
    @typedefinitiondisease.destroy
    respond_to do |format|
      format.html { redirect_to typedefinitiondiseases_url, notice: 'Typedefinitiondisease was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typedefinitiondisease
      @typedefinitiondisease = Typedefinitiondisease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typedefinitiondisease_params
      params.require(:typedefinitiondisease).permit(:id, :name, :neighbors, :definition)
    end
end
