class Api::UsuariosController < ApiController

  # Antes de ejecutar las acciones show, update y destroy se llevará a cabo la
  # ejecución del método privado set_usuario.
  before_action :set_usuario, only: [:show, :update, :destroy]

  # Acción para GET /api/usuarios
  def index
    @usuarios = Usuario.all
    render json: @usuarios
  end

  # Acción para GET /api/usuarios/:id
  def show
    render json: @usuario
  end

  # Acción para POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      render json: @usuario, status: :created
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # Acción para PUT /usuarios/:id
  def update
    if @usuario.update(usuario_params)
      render json: @usuario, status: :ok
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # Acción para DELETE /usuarios/:id
  def destroy
    @usuario.destroy
    head :no_content
  end

  private

  # Este método encuentra al usuario por su id en la base de datos
  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  # Este método filtra los parámetros que son permitidos en el HTTP request
  def usuario_params
    params.require(:usuario).permit(:nombre, :correo_electronico, :contrasena, :telefono, :github)
  end
end
