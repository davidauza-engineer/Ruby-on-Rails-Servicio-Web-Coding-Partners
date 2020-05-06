class TecnologiasController < ApplicationController
  before_action :set_tecnologia, only: [:show, :edit, :update, :destroy]

  # GET /tecnologias
  # GET /tecnologias.json
  def index
    @tecnologias = Tecnologia.all
  end

  # GET /tecnologias/1
  # GET /tecnologias/1.json
  def show
  end

  # GET /tecnologias/new
  def new
    @tecnologia = Tecnologia.new
  end

  # GET /tecnologias/1/edit
  def edit
  end

  # POST /tecnologias
  # POST /tecnologias.json
  def create
    @tecnologia = Tecnologia.new(tecnologia_params)

    respond_to do |format|
      if @tecnologia.save
        format.html { redirect_to @tecnologia, notice: 'Tecnologia was successfully created.' }
        format.json { render :show, status: :created, location: @tecnologia }
      else
        format.html { render :new }
        format.json { render json: @tecnologia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tecnologias/1
  # PATCH/PUT /tecnologias/1.json
  def update
    respond_to do |format|
      if @tecnologia.update(tecnologia_params)
        format.html { redirect_to @tecnologia, notice: 'Tecnologia was successfully updated.' }
        format.json { render :show, status: :ok, location: @tecnologia }
      else
        format.html { render :edit }
        format.json { render json: @tecnologia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecnologias/1
  # DELETE /tecnologias/1.json
  def destroy
    @tecnologia.destroy
    respond_to do |format|
      format.html { redirect_to tecnologias_url, notice: 'Tecnologia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tecnologia
      @tecnologia = Tecnologia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tecnologia_params
      params.require(:tecnologia).permit(:nombre)
    end
end
