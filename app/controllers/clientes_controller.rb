class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /clientes
  def index
    @clientes = Cliente.all
  end

  # GET /clientes/1
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
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

  # PATCH/PUT /clientes/1
  def update
    if @cliente.update(cliente_params)
      redirect_to @cliente, notice: 'Cliente was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clientes/1
  def destroy
    @cliente.destroy
    redirect_to clientes_url, notice: 'Cliente was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cliente_params
      params.require(:cliente).permit(:nombre, :ap, :am, :edad, :sexo, :mail, :notif, :especial, :noCompras)
    end
end
