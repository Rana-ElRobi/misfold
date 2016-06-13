class DisxrefsController < ApplicationController
  before_action :set_disxref, only: [:show, :edit, :update, :destroy]

  # GET /disxrefs
  # GET /disxrefs.json
  def index
    @disxrefs = Disxref.all
  end

  # GET /disxrefs/1
  # GET /disxrefs/1.json
  def show
  end

  # GET /disxrefs/new
  def new
    @disxref = Disxref.new
  end

  # GET /disxrefs/1/edit
  def edit
  end

  # POST /disxrefs
  # POST /disxrefs.json
  def create
    @disxref = Disxref.new(disxref_params)

    respond_to do |format|
      if @disxref.save
        format.html { redirect_to @disxref, notice: 'Disxref was successfully created.' }
        format.json { render :show, status: :created, location: @disxref }
      else
        format.html { render :new }
        format.json { render json: @disxref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disxrefs/1
  # PATCH/PUT /disxrefs/1.json
  def update
    respond_to do |format|
      if @disxref.update(disxref_params)
        format.html { redirect_to @disxref, notice: 'Disxref was successfully updated.' }
        format.json { render :show, status: :ok, location: @disxref }
      else
        format.html { render :edit }
        format.json { render json: @disxref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disxrefs/1
  # DELETE /disxrefs/1.json
  def destroy
    @disxref.destroy
    respond_to do |format|
      format.html { redirect_to disxrefs_url, notice: 'Disxref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disxref
      @disxref = Disxref.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disxref_params
      params.require(:disxref).permit(:xref)
    end
end
