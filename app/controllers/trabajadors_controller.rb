class TrabajadorsController < ApplicationController
  before_action :set_trabajador, only: %i[ show edit update destroy ]

  # GET /trabajadors or /trabajadors.json
  def index
    @trabajadors = Trabajador.all
  end

  # GET /trabajadors/1 or /trabajadors/1.json
  def show
  end

  # GET /trabajadors/new
  def new
		@centros = Centro.find(params[:id])
    @trabajador = Trabajador.new
  end

  # GET /trabajadors/1/edit
  def edit
  end

  # POST /trabajadors or /trabajadors.json
  def create
    @trabajador = Trabajador.new(trabajador_params)

    respond_to do |format|
      if @trabajador.save
        format.html { redirect_to @trabajador, notice: "Trabajador was successfully created." }
        format.json { render :show, status: :created, location: @trabajador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trabajador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabajadors/1 or /trabajadors/1.json
  def update
    respond_to do |format|
      if @trabajador.update(trabajador_params)
        format.html { redirect_to @trabajador, notice: "Trabajador was successfully updated." }
        format.json { render :show, status: :ok, location: @trabajador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trabajador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabajadors/1 or /trabajadors/1.json
  def destroy
    @trabajador.destroy
    respond_to do |format|
      format.html { redirect_to trabajadors_url, notice: "Trabajador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabajador
      @trabajador = Trabajador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trabajador_params
      params.require(:trabajador).permit(:nombre, :apellidos, :puesto, :embarazo, :lactante, :sensible, :discapacidad, :menor, :fecha_alta, :fecha_baja)
    end
end
