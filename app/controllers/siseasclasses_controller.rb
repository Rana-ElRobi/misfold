class SiseasclassesController < ApplicationController
  before_action :set_siseasclass, only: [:show, :edit, :update, :destroy]

  # GET /siseasclasses
  # GET /siseasclasses.json
  def index
    @siseasclasses = Siseasclass.all
  end

  # GET /siseasclasses/1
  # GET /siseasclasses/1.json
  def show
  end

  # GET /siseasclasses/new
  def new
    @siseasclass = Siseasclass.new
  end

  # GET /siseasclasses/1/edit
  def edit
  end

  # POST /siseasclasses
  # POST /siseasclasses.json
  def create
    @siseasclass = Siseasclass.new(siseasclass_params)

    respond_to do |format|
      if @siseasclass.save
        format.html { redirect_to @siseasclass, notice: 'Siseasclass was successfully created.' }
        format.json { render :show, status: :created, location: @siseasclass }
      else
        format.html { render :new }
        format.json { render json: @siseasclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /siseasclasses/1
  # PATCH/PUT /siseasclasses/1.json
  def update
    respond_to do |format|
      if @siseasclass.update(siseasclass_params)
        format.html { redirect_to @siseasclass, notice: 'Siseasclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @siseasclass }
      else
        format.html { render :edit }
        format.json { render json: @siseasclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siseasclasses/1
  # DELETE /siseasclasses/1.json
  def destroy
    @siseasclass.destroy
    respond_to do |format|
      format.html { redirect_to siseasclasses_url, notice: 'Siseasclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siseasclass
      @siseasclass = Siseasclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def siseasclass_params
      params.require(:siseasclass).permit(:diseasclass)
    end
end
