class IntersectionOfsController < ApplicationController
  before_action :set_intersection_of, only: [:show, :edit, :update, :destroy]

  # GET /intersection_ofs
  # GET /intersection_ofs.json
  def index
    @intersection_ofs = IntersectionOf.all
  end

  # GET /intersection_ofs/1
  # GET /intersection_ofs/1.json
  def show
  end

  # GET /intersection_ofs/new
  def new
    @intersection_of = IntersectionOf.new
  end

  # GET /intersection_ofs/1/edit
  def edit
  end

  # POST /intersection_ofs
  # POST /intersection_ofs.json
  def create
    @intersection_of = IntersectionOf.new(intersection_of_params)

    respond_to do |format|
      if @intersection_of.save
        format.html { redirect_to @intersection_of, notice: 'Intersection of was successfully created.' }
        format.json { render :show, status: :created, location: @intersection_of }
      else
        format.html { render :new }
        format.json { render json: @intersection_of.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intersection_ofs/1
  # PATCH/PUT /intersection_ofs/1.json
  def update
    respond_to do |format|
      if @intersection_of.update(intersection_of_params)
        format.html { redirect_to @intersection_of, notice: 'Intersection of was successfully updated.' }
        format.json { render :show, status: :ok, location: @intersection_of }
      else
        format.html { render :edit }
        format.json { render json: @intersection_of.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intersection_ofs/1
  # DELETE /intersection_ofs/1.json
  def destroy
    @intersection_of.destroy
    respond_to do |format|
      format.html { redirect_to intersection_ofs_url, notice: 'Intersection of was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intersection_of
      @intersection_of = IntersectionOf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intersection_of_params
      params.require(:intersection_of).permit(:id, :name, :neighbors)
    end
end
