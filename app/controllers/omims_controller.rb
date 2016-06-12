class OmimsController < ApplicationController
  before_action :set_omim, only: [:show, :edit, :update, :destroy]

  # GET /omims
  # GET /omims.json
  def index
    @omims = Omim.all
  end

  # GET /omims/1
  # GET /omims/1.json
  def show
  end

  # GET /omims/new
  def new
    @omim = Omim.new
  end

  # GET /omims/1/edit
  def edit
  end

  # POST /omims
  # POST /omims.json
  def create
    @omim = Omim.new(omim_params)

    respond_to do |format|
      if @omim.save
        format.html { redirect_to @omim, notice: 'Omim was successfully created.' }
        format.json { render :show, status: :created, location: @omim }
      else
        format.html { render :new }
        format.json { render json: @omim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /omims/1
  # PATCH/PUT /omims/1.json
  def update
    respond_to do |format|
      if @omim.update(omim_params)
        format.html { redirect_to @omim, notice: 'Omim was successfully updated.' }
        format.json { render :show, status: :ok, location: @omim }
      else
        format.html { render :edit }
        format.json { render json: @omim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /omims/1
  # DELETE /omims/1.json
  def destroy
    @omim.destroy
    respond_to do |format|
      format.html { redirect_to omims_url, notice: 'Omim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_omim
      @omim = Omim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def omim_params
      params.require(:omim).permit(:omimid, :omimurl, :moodofinheritnce)
    end
end
