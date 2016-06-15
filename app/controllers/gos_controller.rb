class GosController < ApplicationController
  before_action :set_go, only: [:show, :edit, :update, :destroy]

  # GET /gos
  # GET /gos.json
  def index
    @gos = Go.all
  end

  # GET /gos/1
  # GET /gos/1.json
  def show
  end

  # GET /gos/new
  def new
    @go = Go.new
  end

  # GET /gos/1/edit
  def edit
  end

  # POST /gos
  # POST /gos.json
  def create
    @go = Go.new(go_params)

    respond_to do |format|
      if @go.save
        format.html { redirect_to @go, notice: 'Go was successfully created.' }
        format.json { render :show, status: :created, location: @go }
      else
        format.html { render :new }
        format.json { render json: @go.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gos/1
  # PATCH/PUT /gos/1.json
  def update
    respond_to do |format|
      if @go.update(go_params)
        format.html { redirect_to @go, notice: 'Go was successfully updated.' }
        format.json { render :show, status: :ok, location: @go }
      else
        format.html { render :edit }
        format.json { render json: @go.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gos/1
  # DELETE /gos/1.json
  def destroy
    @go.destroy
    respond_to do |format|
      format.html { redirect_to gos_url, notice: 'Go was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_go
      @go = Go.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def go_params
      params.require(:go).permit(:id, :url, :description, :annotations)
    end
end
