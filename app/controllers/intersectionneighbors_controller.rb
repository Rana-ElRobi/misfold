class IntersectionneighborsController < ApplicationController
  before_action :set_intersectionneighbor, only: [:show, :edit, :update, :destroy]

  # GET /intersectionneighbors
  # GET /intersectionneighbors.json
  def index
    @intersectionneighbors = Intersectionneighbor.all
  end

  # GET /intersectionneighbors/1
  # GET /intersectionneighbors/1.json
  def show
  end

  # GET /intersectionneighbors/new
  def new
    @intersectionneighbor = Intersectionneighbor.new
  end

  # GET /intersectionneighbors/1/edit
  def edit
  end

  # POST /intersectionneighbors
  # POST /intersectionneighbors.json
  def create
    @intersectionneighbor = Intersectionneighbor.new(intersectionneighbor_params)

    respond_to do |format|
      if @intersectionneighbor.save
        format.html { redirect_to @intersectionneighbor, notice: 'Intersectionneighbor was successfully created.' }
        format.json { render :show, status: :created, location: @intersectionneighbor }
      else
        format.html { render :new }
        format.json { render json: @intersectionneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intersectionneighbors/1
  # PATCH/PUT /intersectionneighbors/1.json
  def update
    respond_to do |format|
      if @intersectionneighbor.update(intersectionneighbor_params)
        format.html { redirect_to @intersectionneighbor, notice: 'Intersectionneighbor was successfully updated.' }
        format.json { render :show, status: :ok, location: @intersectionneighbor }
      else
        format.html { render :edit }
        format.json { render json: @intersectionneighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intersectionneighbors/1
  # DELETE /intersectionneighbors/1.json
  def destroy
    @intersectionneighbor.destroy
    respond_to do |format|
      format.html { redirect_to intersectionneighbors_url, notice: 'Intersectionneighbor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intersectionneighbor
      @intersectionneighbor = Intersectionneighbor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intersectionneighbor_params
      params.require(:intersectionneighbor).permit(:neighbor)
    end
end
