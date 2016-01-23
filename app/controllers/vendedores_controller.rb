class VendedoresController < ApplicationController
  before_action :set_vendedore, only: [:show, :edit, :update, :destroy]

  # GET /vendedores
  def index
    @vendedores = Vendedore.all
  end

  # GET /vendedores/1
  def show
  end

  # GET /vendedores/new
  def new
    @vendedore = Vendedore.new
  end

  # GET /vendedores/1/edit
  def edit
  end

  # POST /vendedores
  def create
    @vendedore = Vendedore.new(vendedore_params)

    if @vendedore.save
      redirect_to @vendedore, notice: 'Vendedore was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vendedores/1
  def update
    if @vendedore.update(vendedore_params)
      redirect_to @vendedore, notice: 'Vendedore was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vendedores/1
  def destroy
    @vendedore.destroy
    redirect_to vendedores_url, notice: 'Vendedore was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendedore
      @vendedore = Vendedore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vendedore_params
      params.require(:vendedore).permit(:usr, :pwd, :nombre, :ap, :am, :gerente, :ganancia)
    end
end
