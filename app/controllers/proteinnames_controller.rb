class ProteinnamesController < ApplicationController
  before_action :set_proteinname, only: [:show, :edit, :update, :destroy]

  # GET /proteinnames
  # GET /proteinnames.json
  def index
    @proteinnames = Proteinname.all
  end

  # GET /proteinnames/1
  # GET /proteinnames/1.json
  def show
  end

  # GET /proteinnames/new
  def new
    @proteinname = Proteinname.new
  end

  # GET /proteinnames/1/edit
  def edit
  end

  # POST /proteinnames
  # POST /proteinnames.json
  def create
    @proteinname = Proteinname.new(proteinname_params)

    respond_to do |format|
      if @proteinname.save
        format.html { redirect_to @proteinname, notice: 'Proteinname was successfully created.' }
        format.json { render :show, status: :created, location: @proteinname }
      else
        format.html { render :new }
        format.json { render json: @proteinname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proteinnames/1
  # PATCH/PUT /proteinnames/1.json
  def update
    respond_to do |format|
      if @proteinname.update(proteinname_params)
        format.html { redirect_to @proteinname, notice: 'Proteinname was successfully updated.' }
        format.json { render :show, status: :ok, location: @proteinname }
      else
        format.html { render :edit }
        format.json { render json: @proteinname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proteinnames/1
  # DELETE /proteinnames/1.json
  def destroy
    @proteinname.destroy
    respond_to do |format|
      format.html { redirect_to proteinnames_url, notice: 'Proteinname was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proteinname
      @proteinname = Proteinname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proteinname_params
      params.require(:proteinname).permit(:name, :type, :isprimary)
    end
end
