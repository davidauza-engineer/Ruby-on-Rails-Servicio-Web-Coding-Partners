class Api::UsuariosTecnologiasController < ApiController

  # Antes de ejecutar las acciones show, update y destroy se llevará a cabo la
  # ejecución del método privado set_usuario_tecnologia.
  before_action :set_usuario_tecnologia, only: [:show, :update, :destroy]

  # Acción para GET /api/usuarios_tecnologias
  def index
    @usuarios_tecnologias = UsuarioTecnologia.all
    render json: @usuarios_tecnologias
  end

  # Acción para GET /api/usuarios_tecnologias/:id
  def show
    render json: @usuario_tecnologia
  end

  # Acción para POST /usuarios_tecnologias
  def create
    @usuario_tecnologia = UsuarioTecnologia.new(usuario_tecnologia_params)

    if @usuario_tecnologia.save
      render json: @usuario_tecnologia, status: :created
    else
      render json: @usuario_tecnologia.errors, status: :unprocessable_entity
    end
  end

  # Acción para PUT /usuarios_tecnologias/:id
  def update
    if @usuario_tecnologia.update(usuario_tecnologia_params)
      render json: @usuario_tecnologia, status: :ok
    else
      render json: @usuario_tecnologia.errors, status: :unprocessable_entity
    end
  end

  # Acción para DELETE /usuarios_tecnologias/:id
  def destroy
    @usuario_tecnologia.destroy
    head :no_content
  end

  private

  # Este método encuentra el usuario_tecnologia por su id en la base de datos
  def set_usuario_tecnologia
    @usuario_tecnologia = UsuarioTecnologia.find(params[:id])
  end

  # Este método filtra los parámetros que son permitidos en el HTTP request
  def usuario_tecnologia_params
    params.require(:usuario_tecnologia).permit(:usuario_id, :tecnologia_id)
  end
end
