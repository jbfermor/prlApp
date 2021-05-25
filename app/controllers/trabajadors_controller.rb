class TrabajadorsController < ApplicationController
  before_action :set_trabajador, only: %i[ show edit update destroy ]

  # GET /trabajadors or /trabajadors.json
  def index
    @trabajadors = Trabajador.all
  end

  # GET /trabajadors/1 or /trabajadors/1.json
  def show
		trabajador = Trabajador.find(params[:id])
		@centro = trabajador.centro_id
  end

  # GET /trabajadors/new
  def new
		@centro = Centro.find(params[:centro_id])
    @trabajador = Trabajador.new
  end

  # GET /trabajadors/1/edit
  def edit
		trabajador = Trabajador.find(params[:id])
		@centro = Centro.find(trabajador.centro_id)
		empresa = trabajador.centro.empresa
		@centros = Empresa.find(empresa.id).centros
  end

  # POST /trabajadors or /trabajadors.json
  def create
    @trabajador = Trabajador.new(trabajador_params)
		@centro = Centro.find(params[:centro_id])
		@trabajador.centro = @centro
		@trabajador.activo = 1
		@trabajador.fecha_alta = Time.now.to_i

    respond_to do |format|
      if @trabajador.save
        format.html { redirect_to centro_path(@centro),
				 notice: "El trabajador se creó correctamente." }
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
        format.html { redirect_to centro_path(@trabajador.centro_id),
					 notice: "El trabajador se guardó correctamente" }
        format.json { render :show, status: :ok, location: @trabajador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trabajador.errors, status: :unprocessable_entity }
      end
    end
  end

	def dar_baja
		trabajador = Trabajador.find(params[:id])
		centro = Centro.find(trabajador.centro_id)
		empresa = centro.empresa
		respond_to do |format|
      if trabajador.update(activo: 0, fecha_baja: Time.now)
        format.html { redirect_to empresa_path(empresa),
					 notice: "El trabajador se ha dado de baja" }
        format.json { render :show, status: :ok, location: @trabajador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trabajador.errors, status: :unprocessable_entity }
      end
    end
	end

	def dar_alta
		trabajador = Trabajador.find(params[:id])
		centro = Centro.find(trabajador.centro_id)
		empresa = centro.empresa
		respond_to do |format|
			if trabajador.update(activo: 1, fecha_baja: nil)
				format.html { redirect_to empresa_path(empresa),
					 notice: "El trabajador se ha dado de alta" }
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
      params.require(:trabajador).permit(:nombre, :apellidos, :puesto, :embarazo,
				 :lactante, :sensible, :discapacidad, :menor, :fecha_alta, :fecha_baja,
			   :centro_id, :activo, :rincendio, :revacuacion, :rauxilio, :es_responsable)
    end
end
