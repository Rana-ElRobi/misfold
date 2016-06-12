class IsAdiseasesController < ApplicationController
  before_action :set_is_adisease, only: [:show, :edit, :update, :destroy]

  # GET /is_adiseases
  # GET /is_adiseases.json
  def index
    @is_adiseases = IsAdisease.all
  end

  # GET /is_adiseases/1
  # GET /is_adiseases/1.json
  def show
  end

  # GET /is_adiseases/new
  def new
    @is_adisease = IsAdisease.new
  end

  # GET /is_adiseases/1/edit
  def edit
  end

  # POST /is_adiseases
  # POST /is_adiseases.json
  def create
    @is_adisease = IsAdisease.new(is_adisease_params)

    respond_to do |format|
      if @is_adisease.save
        format.html { redirect_to @is_adisease, notice: 'Is adisease was successfully created.' }
        format.json { render :show, status: :created, location: @is_adisease }
      else
        format.html { render :new }
        format.json { render json: @is_adisease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /is_adiseases/1
  # PATCH/PUT /is_adiseases/1.json
  def update
    respond_to do |format|
      if @is_adisease.update(is_adisease_params)
        format.html { redirect_to @is_adisease, notice: 'Is adisease was successfully updated.' }
        format.json { render :show, status: :ok, location: @is_adisease }
      else
        format.html { render :edit }
        format.json { render json: @is_adisease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /is_adiseases/1
  # DELETE /is_adiseases/1.json
  def destroy
    @is_adisease.destroy
    respond_to do |format|
      format.html { redirect_to is_adiseases_url, notice: 'Is adisease was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_is_adisease
      @is_adisease = IsAdisease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def is_adisease_params
      params.require(:is_adisease).permit(:id, :name, :neighbors)
    end
end
