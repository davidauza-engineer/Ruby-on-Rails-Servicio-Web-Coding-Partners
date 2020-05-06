class AmistadesController < ApplicationController
  before_action :set_amistad, only: [:show, :edit, :update, :destroy]

  # GET /amistades
  # GET /amistades.json
  def index
    @amistades = Amistad.all
  end

  # GET /amistades/1
  # GET /amistades/1.json
  def show
  end

  # GET /amistades/new
  def new
    @amistad = Amistad.new
  end

  # GET /amistades/1/edit
  def edit
  end

  # POST /amistades
  # POST /amistades.json
  def create
    @amistad = Amistad.new(amistad_params)

    respond_to do |format|
      if @amistad.save
        format.html { redirect_to @amistad, notice: 'Amistad was successfully created.' }
        format.json { render :show, status: :created, location: @amistad }
      else
        format.html { render :new }
        format.json { render json: @amistad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amistades/1
  # PATCH/PUT /amistades/1.json
  def update
    respond_to do |format|
      if @amistad.update(amistad_params)
        format.html { redirect_to @amistad, notice: 'Amistad was successfully updated.' }
        format.json { render :show, status: :ok, location: @amistad }
      else
        format.html { render :edit }
        format.json { render json: @amistad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amistades/1
  # DELETE /amistades/1.json
  def destroy
    @amistad.destroy
    respond_to do |format|
      format.html { redirect_to amistades_url, notice: 'Amistad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amistad
      @amistad = Amistad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amistad_params
      params.require(:amistad).permit(:usuario_id_id, :amigo_id_id, :confirmada)
    end
end
