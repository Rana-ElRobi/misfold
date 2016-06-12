class TypedefinitionproteinsController < ApplicationController
  before_action :set_typedefinitionprotein, only: [:show, :edit, :update, :destroy]

  # GET /typedefinitionproteins
  # GET /typedefinitionproteins.json
  def index
    @typedefinitionproteins = Typedefinitionprotein.all
  end

  # GET /typedefinitionproteins/1
  # GET /typedefinitionproteins/1.json
  def show
  end

  # GET /typedefinitionproteins/new
  def new
    @typedefinitionprotein = Typedefinitionprotein.new
  end

  # GET /typedefinitionproteins/1/edit
  def edit
  end

  # POST /typedefinitionproteins
  # POST /typedefinitionproteins.json
  def create
    @typedefinitionprotein = Typedefinitionprotein.new(typedefinitionprotein_params)

    respond_to do |format|
      if @typedefinitionprotein.save
        format.html { redirect_to @typedefinitionprotein, notice: 'Typedefinitionprotein was successfully created.' }
        format.json { render :show, status: :created, location: @typedefinitionprotein }
      else
        format.html { render :new }
        format.json { render json: @typedefinitionprotein.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typedefinitionproteins/1
  # PATCH/PUT /typedefinitionproteins/1.json
  def update
    respond_to do |format|
      if @typedefinitionprotein.update(typedefinitionprotein_params)
        format.html { redirect_to @typedefinitionprotein, notice: 'Typedefinitionprotein was successfully updated.' }
        format.json { render :show, status: :ok, location: @typedefinitionprotein }
      else
        format.html { render :edit }
        format.json { render json: @typedefinitionprotein.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typedefinitionproteins/1
  # DELETE /typedefinitionproteins/1.json
  def destroy
    @typedefinitionprotein.destroy
    respond_to do |format|
      format.html { redirect_to typedefinitionproteins_url, notice: 'Typedefinitionprotein was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typedefinitionprotein
      @typedefinitionprotein = Typedefinitionprotein.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typedefinitionprotein_params
      params.require(:typedefinitionprotein).permit(:id, :name, :neighbors, :synonym, :definition, :comment, :is_transitive, :is_obsolete)
    end
end
