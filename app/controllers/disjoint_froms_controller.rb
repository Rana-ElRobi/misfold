class DisjointFromsController < ApplicationController
  before_action :set_disjoint_from, only: [:show, :edit, :update, :destroy]

  # GET /disjoint_froms
  # GET /disjoint_froms.json
  def index
    @disjoint_froms = DisjointFrom.all
  end

  # GET /disjoint_froms/1
  # GET /disjoint_froms/1.json
  def show
  end

  # GET /disjoint_froms/new
  def new
    @disjoint_from = DisjointFrom.new
  end

  # GET /disjoint_froms/1/edit
  def edit
  end

  # POST /disjoint_froms
  # POST /disjoint_froms.json
  def create
    @disjoint_from = DisjointFrom.new(disjoint_from_params)

    respond_to do |format|
      if @disjoint_from.save
        format.html { redirect_to @disjoint_from, notice: 'Disjoint from was successfully created.' }
        format.json { render :show, status: :created, location: @disjoint_from }
      else
        format.html { render :new }
        format.json { render json: @disjoint_from.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disjoint_froms/1
  # PATCH/PUT /disjoint_froms/1.json
  def update
    respond_to do |format|
      if @disjoint_from.update(disjoint_from_params)
        format.html { redirect_to @disjoint_from, notice: 'Disjoint from was successfully updated.' }
        format.json { render :show, status: :ok, location: @disjoint_from }
      else
        format.html { render :edit }
        format.json { render json: @disjoint_from.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disjoint_froms/1
  # DELETE /disjoint_froms/1.json
  def destroy
    @disjoint_from.destroy
    respond_to do |format|
      format.html { redirect_to disjoint_froms_url, notice: 'Disjoint from was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disjoint_from
      @disjoint_from = DisjointFrom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disjoint_from_params
      params.require(:disjoint_from).permit(:id, :name, :neighbors)
    end
end
