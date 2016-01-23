class DiscosController < ApplicationController
  before_action :set_disco, only: [:show, :edit, :update, :destroy]

  # GET /discos
  def index
    @discos = Disco.all
  end

  # GET /discos/1
  def show
  end

  # GET /discos/new
  def new
    @disco = Disco.new
  end

  # GET /discos/1/edit
  def edit
  end

  # POST /discos
  def create
    @disco = Disco.new(disco_params)

    if @disco.save
      if session[:admin] == 1
      redirect_to '/gerente'
      end

      if session[:admin] == 0
        redirect_to '/ventas'
      end
    else
      render :new
    end
  end

  # PATCH/PUT /discos/1
  def update
    if @disco.update(disco_params)
      redirect_to '/gerente'
    else
      render :edit
    end
  end

  # DELETE /discos/1
  def destroy
    @disco.destroy
    redirect_to discos_url, notice: 'Disco was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disco
      @disco = Disco.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def disco_params
      params.require(:disco).permit(:cantidad, :titulo, :genero, :artista, :anio, :album, :NumCanciones, :descuento, :costo)
    end
end
