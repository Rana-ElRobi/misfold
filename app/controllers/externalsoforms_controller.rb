class ExternalsoformsController < ApplicationController
  before_action :set_externalsoform, only: [:show, :edit, :update, :destroy]

  # GET /externalsoforms
  # GET /externalsoforms.json
  def index
    @externalsoforms = Externalsoform.all
  end

  # GET /externalsoforms/1
  # GET /externalsoforms/1.json
  def show
  end

  # GET /externalsoforms/new
  def new
    @externalsoform = Externalsoform.new
  end

  # GET /externalsoforms/1/edit
  def edit
  end

  # POST /externalsoforms
  # POST /externalsoforms.json
  def create
    @externalsoform = Externalsoform.new(externalsoform_params)

    respond_to do |format|
      if @externalsoform.save
        format.html { redirect_to @externalsoform, notice: 'Externalsoform was successfully created.' }
        format.json { render :show, status: :created, location: @externalsoform }
      else
        format.html { render :new }
        format.json { render json: @externalsoform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /externalsoforms/1
  # PATCH/PUT /externalsoforms/1.json
  def update
    respond_to do |format|
      if @externalsoform.update(externalsoform_params)
        format.html { redirect_to @externalsoform, notice: 'Externalsoform was successfully updated.' }
        format.json { render :show, status: :ok, location: @externalsoform }
      else
        format.html { render :edit }
        format.json { render json: @externalsoform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /externalsoforms/1
  # DELETE /externalsoforms/1.json
  def destroy
    @externalsoform.destroy
    respond_to do |format|
      format.html { redirect_to externalsoforms_url, notice: 'Externalsoform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_externalsoform
      @externalsoform = Externalsoform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def externalsoform_params
      params.require(:externalsoform).permit(:url)
    end
end
