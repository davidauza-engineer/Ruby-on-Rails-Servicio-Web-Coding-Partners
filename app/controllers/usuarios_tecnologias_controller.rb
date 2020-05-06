class UsuariosTecnologiasController < ApplicationController
  before_action :set_usuario_tecnologia, only: [:show, :edit, :update, :destroy]

  # GET /usuarios_tecnologias
  # GET /usuarios_tecnologias.json
  def index
    @usuarios_tecnologias = UsuarioTecnologia.all
  end

  # GET /usuarios_tecnologias/1
  # GET /usuarios_tecnologias/1.json
  def show
  end

  # GET /usuarios_tecnologias/new
  def new
    @usuario_tecnologia = UsuarioTecnologia.new
  end

  # GET /usuarios_tecnologias/1/edit
  def edit
  end

  # POST /usuarios_tecnologias
  # POST /usuarios_tecnologias.json
  def create
    @usuario_tecnologia = UsuarioTecnologia.new(usuario_tecnologia_params)

    respond_to do |format|
      if @usuario_tecnologia.save
        format.html { redirect_to @usuario_tecnologia, notice: 'Usuario tecnologia was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_tecnologia }
      else
        format.html { render :new }
        format.json { render json: @usuario_tecnologia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios_tecnologias/1
  # PATCH/PUT /usuarios_tecnologias/1.json
  def update
    respond_to do |format|
      if @usuario_tecnologia.update(usuario_tecnologia_params)
        format.html { redirect_to @usuario_tecnologia, notice: 'Usuario tecnologia was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_tecnologia }
      else
        format.html { render :edit }
        format.json { render json: @usuario_tecnologia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios_tecnologias/1
  # DELETE /usuarios_tecnologias/1.json
  def destroy
    @usuario_tecnologia.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_tecnologias_url, notice: 'Usuario tecnologia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_tecnologia
      @usuario_tecnologia = UsuarioTecnologia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usuario_tecnologia_params
      params.require(:usuario_tecnologia).permit(:usuario_id_id, :tecnologia_id_id)
    end
end
