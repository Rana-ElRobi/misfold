class PosttranslationalmodificationsController < ApplicationController
  before_action :set_posttranslationalmodification, only: [:show, :edit, :update, :destroy]

  # GET /posttranslationalmodifications
  # GET /posttranslationalmodifications.json
  def index
    @posttranslationalmodifications = Posttranslationalmodification.all
  end

  # GET /posttranslationalmodifications/1
  # GET /posttranslationalmodifications/1.json
  def show
  end

  # GET /posttranslationalmodifications/new
  def new
    @posttranslationalmodification = Posttranslationalmodification.new
  end

  # GET /posttranslationalmodifications/1/edit
  def edit
  end

  # POST /posttranslationalmodifications
  # POST /posttranslationalmodifications.json
  def create
    @posttranslationalmodification = Posttranslationalmodification.new(posttranslationalmodification_params)

    respond_to do |format|
      if @posttranslationalmodification.save
        format.html { redirect_to @posttranslationalmodification, notice: 'Posttranslationalmodification was successfully created.' }
        format.json { render :show, status: :created, location: @posttranslationalmodification }
      else
        format.html { render :new }
        format.json { render json: @posttranslationalmodification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posttranslationalmodifications/1
  # PATCH/PUT /posttranslationalmodifications/1.json
  def update
    respond_to do |format|
      if @posttranslationalmodification.update(posttranslationalmodification_params)
        format.html { redirect_to @posttranslationalmodification, notice: 'Posttranslationalmodification was successfully updated.' }
        format.json { render :show, status: :ok, location: @posttranslationalmodification }
      else
        format.html { render :edit }
        format.json { render json: @posttranslationalmodification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posttranslationalmodifications/1
  # DELETE /posttranslationalmodifications/1.json
  def destroy
    @posttranslationalmodification.destroy
    respond_to do |format|
      format.html { redirect_to posttranslationalmodifications_url, notice: 'Posttranslationalmodification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posttranslationalmodification
      @posttranslationalmodification = Posttranslationalmodification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posttranslationalmodification_params
      params.require(:posttranslationalmodification).permit(:keywords, :description, :position, :lenght, :featurekey)
    end
end
