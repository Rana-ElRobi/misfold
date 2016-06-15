class MisfoldmodlesController < ApplicationController
  before_action :set_misfoldmodle, only: [:show, :edit, :update, :destroy]

  # GET /misfoldmodles
  # GET /misfoldmodles.json
  def index
    @misfoldmodles = Misfoldmodle.all
  end

  # GET /misfoldmodles/1
  # GET /misfoldmodles/1.json
  def show
  end

  # GET /misfoldmodles/new
  def new
    @misfoldmodle = Misfoldmodle.new
  end

  # GET /misfoldmodles/1/edit
  def edit
  end

  # POST /misfoldmodles
  # POST /misfoldmodles.json
  def create
    @misfoldmodle = Misfoldmodle.new(misfoldmodle_params)

    respond_to do |format|
      if @misfoldmodle.save
        format.html { redirect_to @misfoldmodle, notice: 'Misfoldmodle was successfully created.' }
        format.json { render :show, status: :created, location: @misfoldmodle }
      else
        format.html { render :new }
        format.json { render json: @misfoldmodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /misfoldmodles/1
  # PATCH/PUT /misfoldmodles/1.json
  def update
    respond_to do |format|
      if @misfoldmodle.update(misfoldmodle_params)
        format.html { redirect_to @misfoldmodle, notice: 'Misfoldmodle was successfully updated.' }
        format.json { render :show, status: :ok, location: @misfoldmodle }
      else
        format.html { render :edit }
        format.json { render json: @misfoldmodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /misfoldmodles/1
  # DELETE /misfoldmodles/1.json
  def destroy
    @misfoldmodle.destroy
    respond_to do |format|
      format.html { redirect_to misfoldmodles_url, notice: 'Misfoldmodle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_misfoldmodle
      @misfoldmodle = Misfoldmodle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def misfoldmodle_params
      params.require(:misfoldmodle).permit(:id, :type, :refseqm, :refseqp, :nuclutidechange, :molecularconsequence, :aminoacidechange)
    end
end
