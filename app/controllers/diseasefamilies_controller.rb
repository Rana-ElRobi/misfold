class DiseasefamiliesController < ApplicationController
  before_action :set_diseasefamily, only: [:show, :edit, :update, :destroy]

  # GET /diseasefamilies
  # GET /diseasefamilies.json
  def index
    @diseasefamilies = Diseasefamily.all
  end

  # GET /diseasefamilies/1
  # GET /diseasefamilies/1.json
  def show
  end

  # GET /diseasefamilies/new
  def new
    @diseasefamily = Diseasefamily.new
  end

  # GET /diseasefamilies/1/edit
  def edit
  end

  # POST /diseasefamilies
  # POST /diseasefamilies.json
  def create
    @diseasefamily = Diseasefamily.new(diseasefamily_params)

    respond_to do |format|
      if @diseasefamily.save
        format.html { redirect_to @diseasefamily, notice: 'Diseasefamily was successfully created.' }
        format.json { render :show, status: :created, location: @diseasefamily }
      else
        format.html { render :new }
        format.json { render json: @diseasefamily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diseasefamilies/1
  # PATCH/PUT /diseasefamilies/1.json
  def update
    respond_to do |format|
      if @diseasefamily.update(diseasefamily_params)
        format.html { redirect_to @diseasefamily, notice: 'Diseasefamily was successfully updated.' }
        format.json { render :show, status: :ok, location: @diseasefamily }
      else
        format.html { render :edit }
        format.json { render json: @diseasefamily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diseasefamilies/1
  # DELETE /diseasefamilies/1.json
  def destroy
    @diseasefamily.destroy
    respond_to do |format|
      format.html { redirect_to diseasefamilies_url, notice: 'Diseasefamily was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diseasefamily
      @diseasefamily = Diseasefamily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diseasefamily_params
      params.require(:diseasefamily).permit(:familyid, :familyname)
    end
end
