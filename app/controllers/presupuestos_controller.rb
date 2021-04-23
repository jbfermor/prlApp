class PresupuestosController < ApplicationController
  before_action :set_presupuesto, only: %i[ update ]

  # GET /presupuestos/new
  def new
		@empresa = Empresa.find(params[:empresa_id])
    @presupuesto = Presupuesto.new
  end

  # POST /presupuestos or /presupuestos.json
  def create
		@empresa = Empresa.find(params[:empresa_id])
    @presupuesto = Presupuesto.new(presupuesto_params)
		@presupuesto.empresa_id = @empresa.id

    respond_to do |format|
      if @presupuesto.save
        format.html { redirect_to @empresa, notice: "Presupuesto was successfully created." }
        format.json { render :show, status: :created, location: @presupuesto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presupuestos/1 or /presupuestos/1.json
  def update
		@empresa = Empresa.find(@prespuesto.empresa_id)
		@prespuesto = @empresa.presupuesto
    respond_to do |format|
      if @presupuesto.update(presupuesto_params)
        format.html { redirect_to @empresa, notice: "Presupuesto was successfully updated." }
        format.json { render :show, status: :ok, location: @presupuesto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presupuesto
      @presupuesto = Presupuesto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def presupuesto_params
      params.require(:presupuesto).permit(:pr1, :pr2, :pr, :pr4, :pr5, :pr6, :pr7, :pr8, :pr9, :pr10, :pr11, :pr12, :pr13, :pr14, :pr15, :pr16, :pr17, :empresa_id)
    end
end
