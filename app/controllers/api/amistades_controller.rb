class Api::AmistadesController < ApiController

  # Antes de ejecutar las acciones show, update y destroy se llevará a cabo la
  # ejecución del método privado set_amistad.
  before_action :set_amistad, only: [:show, :update, :destroy]

  # Acción para GET /api/amistades
  def index
    @amistades = Amistad.all
    render json: @amistades
  end

  # Acción para GET /api/amistades/:id
  def show
    render json: @amistad
  end

  # Acción para POST /amistades
  def create
    @amistad = Amistad.new(amistad_params)

    if @amistad.save
      render json: @amistad, status: :created
    else
      render json: @amistad, status: :unprocessable_entity
    end
  end

  # Acción para PUT /amistades/:id
  def update
    if @amistad.update(amistad_params)
      render json: @amistad, status: :ok
    else
      render json: @amistad.errors, status: :unprocessable_entity
    end
  end

  # Acción para DELETE /amistades/:id
  def destroy
    @amistad.destroy
    head :no_content
  end

  private

  # Este método encuentra la amistad por su id en la base de datos
  def set_amistad
    @amistad = Amistad.find(params[:id])
  end

  # Este método filtra los parámetros que son permitidos en el HTTP request
  def amistad_params
    params.require(:amistad).permit(:usuario_id, :amigo_id)
  end
end
