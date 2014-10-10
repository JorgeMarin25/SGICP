class NovedadesController < ApplicationController
  before_action :set_novedade, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /novedades
  # GET /novedades.json

def index
 
 @novedades = @empleado.novedades.all
 respond_to do |format|
    format.html
    format.csv { send_data @novedades.to_csv }
    format.xls # { send_data @novedades.to_csv(col_sep: "\t") }
  end
end

def lista_novedades
  @empleados = Empleado.all
    
   respond_to do |format|
      format.html
      format.csv { send_data @novedades.to_csv }
      format.xls # { send_data @novedades.to_csv(col_sep: "\t") }
    end
end
  # GET /novedades/1
  # GET /novedades/1.json
  def show
  end

  # GET /novedades/new
  def new
    @novedade = Novedade.new
  end

  # GET /novedades/1/edit
  def edit
  end

  # POST /novedades
  # POST /novedades.json
  def create
    @novedade = Novedade.new(novedade_params)
    @novedade.empleado_id = @empleado.id
    respond_to do |format|
      if @novedade.save
        format.html { redirect_to empleado_novedades_path(@empleado), notice: 'Novedade was successfully created.' }
        format.json { render :show, status: :created, location: @novedade }
      else
        format.html { render :new }
        format.json { render json: @novedade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novedades/1
  # PATCH/PUT /novedades/1.json
  def update
    respond_to do |format|
      if @novedade.update(novedade_params)
        format.html { redirect_to empleado_novedades_path(@empleado), notice: 'Novedade was successfully updated.' }
        format.json { render :show, status: :ok, location: @novedade }
      else
        format.html { render :edit }
        format.json { render json: @novedade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novedades/1
  # DELETE /novedades/1.json
  def destroy
    @novedade.destroy
    respond_to do |format|
      format.html { redirect_to empleado_novedades_url(@empleado), notice: 'Novedade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novedade
      @empleado = Empleado.find(params[:empleado_id])
      @novedade = Novedade.find(params[:id])if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novedade_params
      params.require(:novedade).permit(:iniciovacaciones, :finvacaciones, :prendasrealizadas, :valorprenda, :sueldobasico, :primalegal, :festivostrabajados, :diasnotrabajados, :horasnotrabajadas, :empleado_id)
    end
end
