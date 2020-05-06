class Api::TecnologiasController < ApiController

  # Antes de ejecutar las acciones show, update y destroy se llevará a cabo la
  # ejecución del método privado set_tecnologia.
  before_action :set_tecnologia, only: [:show, :update, :destroy]

  # Acción para GET /api/tecnologias
  def index
    @tecnologias = Tecnologia.all
    render json: @tecnologias
  end

  # Acción para GET /api/tecnologias/:id
  def show
    render json: @tecnologia
  end

  # Acción para POST /tecnologias
  def create
    @tecnologia = Tecnologia.new(tecnologia_params)

    if @tecnologia.save
      render json: @tecnologia, status: :created
    else
      render json: @tecnologia.errors, status: :unprocessable_entity
    end
  end

  # Acción para PUT /tecnologias/:id
  def update
    if @tecnologia.update(tecnologia_params)
      render json: @tecnologia, status: :ok
    else
      render json: @tecnologia.errors, status: :unprocessable_entity
    end
  end

  # Acción para DELETE /tecnologias/:id
  def destroy
    @tecnologia.destroy
    head :no_content
  end

  private

  # Este método encuentra la tecnologia por su id en la base de datos
  def set_tecnologia
    @tecnologia = Tecnologia.find(params[:id])
  end

  # Este método filtra los parámetros que son permitidos en el HTTP request
  def tecnologia_params
    params.require(:tecnologia).permit(:nombre)
  end
end
