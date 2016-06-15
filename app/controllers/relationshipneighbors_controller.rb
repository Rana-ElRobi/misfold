class RelationshipneighborsController < ApplicationController
  before_action :set_relationshipneighbor, only: [:show, :edit, :update, :destroy]

  # GET /relationshipneighbors
  # GET /relationshipneighbors.json
  def index
    @relationshipneighbors = Relationshipneighbor.all
  end

  # GET /relationshipneighbors/1
  # GET /relationshipneighbors/1.json
  def show
  end

  # GET /relationshipneighbors/new
  def new
    @relationshipneighbor = Relationshipneighbor.new
  end

  # GET /relationshipneighbors/1/edit
  def edit
  end

  # POST /relationshipneighbors
  # POST /relationshipneighbors.json
  def create
    @relationshipneighbor = Relationshipneighbor.new(relationshipneighbor_params)

    respond_to do |format|
      if @relationshipneighbor.save
        format.html { redirect_to @relationshipneighbor, notice: 'Relationshipneighbor was successfully created.' }
        format.json { render :show, status: :created, location: @relationshipneighbor }
      else
        format.html { render :new }
        format.json { render json: @relationshipneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relationshipneighbors/1
  # PATCH/PUT /relationshipneighbors/1.json
  def update
    respond_to do |format|
      if @relationshipneighbor.update(relationshipneighbor_params)
        format.html { redirect_to @relationshipneighbor, notice: 'Relationshipneighbor was successfully updated.' }
        format.json { render :show, status: :ok, location: @relationshipneighbor }
      else
        format.html { render :edit }
        format.json { render json: @relationshipneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationshipneighbors/1
  # DELETE /relationshipneighbors/1.json
  def destroy
    @relationshipneighbor.destroy
    respond_to do |format|
      format.html { redirect_to relationshipneighbors_url, notice: 'Relationshipneighbor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relationshipneighbor
      @relationshipneighbor = Relationshipneighbor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relationshipneighbor_params
      params.require(:relationshipneighbor).permit(:neighbor)
    end
end
