class VideojuegosController < ApplicationController
  before_action :set_videojuego, only: %i[ show update destroy ]

  # GET /videojuegos
  def index
    @videojuegos = Videojuego.all

    render json: @videojuegos
  end

  # GET /videojuegos/join/reservas
  def joinReservas
    @videojuegos = Videojuego.joins(:reserva)

    render json: @videojuegos
  end

  # GET /videojuegos/join/compras
  def joinCompras
    @videojuegos = Videojuego.joins(:compra)

    render json: @videojuegos
  end
  
  # GET /videojuegos/1
  def show
    render json: @videojuego
  end

  # POST /videojuegos
  def create
    @videojuego = Videojuego.new(videojuego_params)

    if @videojuego.save
      render json: @videojuego, status: :created, location: @videojuego
    else
      render json: @videojuego.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /videojuegos/1
  def update
    if @videojuego.update(videojuego_params)
      render json: @videojuego
    else
      render json: @videojuego.errors, status: :unprocessable_entity
    end
  end

  # DELETE /videojuegos/1
  def destroy
    @videojuego.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videojuego
      @videojuego = Videojuego.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def videojuego_params
      params.require(:videojuego).permit(:name, :descripcion, :genre, :developer, :price, :cover)
    end
end
