class IsAproteinsController < ApplicationController
  before_action :set_is_aprotein, only: [:show, :edit, :update, :destroy]

  # GET /is_aproteins
  # GET /is_aproteins.json
  def index
    @is_aproteins = IsAprotein.all
  end

  # GET /is_aproteins/1
  # GET /is_aproteins/1.json
  def show
  end

  # GET /is_aproteins/new
  def new
    @is_aprotein = IsAprotein.new
  end

  # GET /is_aproteins/1/edit
  def edit
  end

  # POST /is_aproteins
  # POST /is_aproteins.json
  def create
    @is_aprotein = IsAprotein.new(is_aprotein_params)

    respond_to do |format|
      if @is_aprotein.save
        format.html { redirect_to @is_aprotein, notice: 'Is aprotein was successfully created.' }
        format.json { render :show, status: :created, location: @is_aprotein }
      else
        format.html { render :new }
        format.json { render json: @is_aprotein.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /is_aproteins/1
  # PATCH/PUT /is_aproteins/1.json
  def update
    respond_to do |format|
      if @is_aprotein.update(is_aprotein_params)
        format.html { redirect_to @is_aprotein, notice: 'Is aprotein was successfully updated.' }
        format.json { render :show, status: :ok, location: @is_aprotein }
      else
        format.html { render :edit }
        format.json { render json: @is_aprotein.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /is_aproteins/1
  # DELETE /is_aproteins/1.json
  def destroy
    @is_aprotein.destroy
    respond_to do |format|
      format.html { redirect_to is_aproteins_url, notice: 'Is aprotein was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_is_aprotein
      @is_aprotein = IsAprotein.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def is_aprotein_params
      params.require(:is_aprotein).permit(:id, :name, :neighbors)
    end
end
