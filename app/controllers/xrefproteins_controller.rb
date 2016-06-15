class XrefproteinsController < ApplicationController
  before_action :set_xrefprotein, only: [:show, :edit, :update, :destroy]

  # GET /xrefproteins
  # GET /xrefproteins.json
  def index
    @xrefproteins = Xrefprotein.all
  end

  # GET /xrefproteins/1
  # GET /xrefproteins/1.json
  def show
  end

  # GET /xrefproteins/new
  def new
    @xrefprotein = Xrefprotein.new
  end

  # GET /xrefproteins/1/edit
  def edit
  end

  # POST /xrefproteins
  # POST /xrefproteins.json
  def create
    @xrefprotein = Xrefprotein.new(xrefprotein_params)

    respond_to do |format|
      if @xrefprotein.save
        format.html { redirect_to @xrefprotein, notice: 'Xrefprotein was successfully created.' }
        format.json { render :show, status: :created, location: @xrefprotein }
      else
        format.html { render :new }
        format.json { render json: @xrefprotein.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xrefproteins/1
  # PATCH/PUT /xrefproteins/1.json
  def update
    respond_to do |format|
      if @xrefprotein.update(xrefprotein_params)
        format.html { redirect_to @xrefprotein, notice: 'Xrefprotein was successfully updated.' }
        format.json { render :show, status: :ok, location: @xrefprotein }
      else
        format.html { render :edit }
        format.json { render json: @xrefprotein.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xrefproteins/1
  # DELETE /xrefproteins/1.json
  def destroy
    @xrefprotein.destroy
    respond_to do |format|
      format.html { redirect_to xrefproteins_url, notice: 'Xrefprotein was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xrefprotein
      @xrefprotein = Xrefprotein.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xrefprotein_params
      params.require(:xrefprotein).permit(:xrefname)
    end
end
