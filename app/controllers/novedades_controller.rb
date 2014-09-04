class NovedadesController < ApplicationController
  before_action :set_novedade, only: [:show, :edit, :update, :destroy]

  # GET /novedades
  # GET /novedades.json

def index
  @novedades = Novedade.order(:fechavacaciones)
  respond_to do |format|
    format.html
    format.csv { send_data @novedades.to_csv }
    format.xls { send_data @novedades.to_csv(col_sep: "\t") }
 
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

    respond_to do |format|
      if @novedade.save
        format.html { redirect_to @novedade, notice: 'Novedade was successfully created.' }
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
        format.html { redirect_to @novedade, notice: 'Novedade was successfully updated.' }
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
      format.html { redirect_to novedades_url, notice: 'Novedade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novedade
      @novedade = Novedade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novedade_params
      params.require(:novedade).permit(:fechavacaciones, :finvacaciones, :cesantias, :primalegal, :primavacaciones, :sueldobasico, :horasextras, :recargosdiurnos, :dominicales, :festivos, :comiciones, :diasnotrabajados, :horasnotrabajadas)
    end
end
