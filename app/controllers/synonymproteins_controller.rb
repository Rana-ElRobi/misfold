class SynonymproteinsController < ApplicationController
  before_action :set_synonymprotein, only: [:show, :edit, :update, :destroy]

  # GET /synonymproteins
  # GET /synonymproteins.json
  def index
    @synonymproteins = Synonymprotein.all
  end

  # GET /synonymproteins/1
  # GET /synonymproteins/1.json
  def show
  end

  # GET /synonymproteins/new
  def new
    @synonymprotein = Synonymprotein.new
  end

  # GET /synonymproteins/1/edit
  def edit
  end

  # POST /synonymproteins
  # POST /synonymproteins.json
  def create
    @synonymprotein = Synonymprotein.new(synonymprotein_params)

    respond_to do |format|
      if @synonymprotein.save
        format.html { redirect_to @synonymprotein, notice: 'Synonymprotein was successfully created.' }
        format.json { render :show, status: :created, location: @synonymprotein }
      else
        format.html { render :new }
        format.json { render json: @synonymprotein.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /synonymproteins/1
  # PATCH/PUT /synonymproteins/1.json
  def update
    respond_to do |format|
      if @synonymprotein.update(synonymprotein_params)
        format.html { redirect_to @synonymprotein, notice: 'Synonymprotein was successfully updated.' }
        format.json { render :show, status: :ok, location: @synonymprotein }
      else
        format.html { render :edit }
        format.json { render json: @synonymprotein.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /synonymproteins/1
  # DELETE /synonymproteins/1.json
  def destroy
    @synonymprotein.destroy
    respond_to do |format|
      format.html { redirect_to synonymproteins_url, notice: 'Synonymprotein was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_synonymprotein
      @synonymprotein = Synonymprotein.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def synonymprotein_params
      params.require(:synonymprotein).permit(:synonymname)
    end
end
