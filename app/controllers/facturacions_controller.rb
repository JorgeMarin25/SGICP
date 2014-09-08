class FacturacionsController < ApplicationController
  before_action :set_facturacion, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /facturacions
  # GET /facturacions.json
  def index
    #@facturacions = Facturacion.search(params[:search], params[:page]) 

    @facturacions = @cliente.facturacions.all
  end

  # GET /facturacions/1
  # GET /facturacions/1.json
  def show
    @facturacion = Facturacion.find(params[:id])
    respond_to do |format|
    format.html
    format.pdf do
    pdf = FacturacionPdf.new(@facturacion)
    send_data pdf.render, filename: "Facturacion_#{@facturacion_number}.pdf",
    type: "application/pdf",
    disposition: "inline"
end
end

  end

  # GET /facturacions/new
  def new
    @facturacion = Facturacion.new
    @facturacion.cliente_id = @cliente_id
  end

  # GET /facturacions/1/edit
  def edit
  end

  # POST /facturacions
  # POST /facturacions.json
  def create
    @facturacion = Facturacion.new(facturacion_params)
    @facturacion.cliente_id = @cliente.id
    respond_to do |format|
      if @facturacion.save
        format.html { redirect_to cliente_facturacions_path(@cliente), notice: 'Facturacion was successfully created.' }
        format.json { render :show, status: :created, location: @facturacion }
      else
        format.html { render :new }
        format.json { render json: @facturacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facturacions/1
  # PATCH/PUT /facturacions/1.json
  def update
    respond_to do |format|
      if @facturacion.update(facturacion_params)
        format.html { redirect_to  cliente_facturacions_path(@cliente), notice: 'Facturacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @facturacion }
      else
        format.html { render :edit }
        format.json { render json: @facturacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturacions/1
  # DELETE /facturacions/1.json
  def destroy
    @facturacion.destroy
    respond_to do |format|
      format.html { redirect_to cliente_facturacions_url(@cliente), notice: 'Facturacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facturacion
      @cliente = Cliente.find(params[:cliente_id])
      @facturacion = Facturacion.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facturacion_params
        params.require(:facturacion).permit(:fecha, :fchven, :cotizacion_id, :cliente_id, :telefono, :empresa, :nit, :producto, :descripcion, :cantidad, :precio, :iva, :subtotal)
    end
end
