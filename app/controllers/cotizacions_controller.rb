class CotizacionsController < ApplicationController

  before_action :set_cotizacion, except: [:allcotizacions]

  def index
      @cotizacions = @cliente.cotizacions.search(params[:search], params[:page]) 
  end

  def show
   @cotizacion = Cotizacion.find(params[:id])
    respond_to do |format|
    format.html
    format.pdf do
    pdf = CotizacionPdf.new(@cotizacion)
    send_data pdf.render, filename: "cotizacion_#{@cotizacion_number}.pdf",
    type: "application/pdf",
    disposition: "inline"
  end
end
  end

  def new
      @cotizacion = Cotizacion.new
      @cotizacion.cliente_id = @cliente.id
  end

  def edit
  end

  def create
    @cotizacion = Cotizacion.new(cotizacion_params)
    @cotizacion.cliente_id = @cliente.id 

    respond_to do |format|
      if @cotizacion.save
        format.html { redirect_to cliente_cotizacions_path(@cliente), notice: 'Cotizacion was successfully created.' }
        format.json { render :show, status: :created, location: @cotizacion }
      else
        format.html { render :new }
        format.json { render json: @cotizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotizacions/1
  # PATCH/PUT /cotizacions/1.json
  def update
    respond_to do |format|
      if @cotizacion.update(cotizacion_params)
        format.html { redirect_to cliente_cotizacions_path(@cliente), notice: 'Cotizacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotizacion }
      else
        format.html { render :edit }
        format.json { render json: @cotizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizacions/1
  # DELETE /cotizacions/1.json
  def destroy
    @cotizacion.destroy
    respond_to do |format|
      format.html { redirect_to cliente_cotizacions_url(@cliente), notice: 'Cotizacion was successfully destroyed.' }

      format.json { head :no_content }
    end
  end

  def allcotizacions
    @cotizacions = Cotizacion.search(params[:search], params[:page]) 
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
  
  def set_cotizacion 
      @cliente = Cliente.find(params[:cliente_id])
      @cotizacion = Cotizacion.find(params[:id]) if params[:id] 
  end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotizacion_params
      params.require(:cotizacion).permit(:cliente_id, :producto, :descripcion, 
                                         :cantidad, :precio, :iva, :subtotal, :total, :estado)
    end
end
