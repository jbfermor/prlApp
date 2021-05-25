class CentrosController < ApplicationController
	before_action :authenticate_user!
  before_action :set_centro, only: %i[ show edit update destroy ]

  def index
    @centros = Centro.all
		@empresa = Empresa.find(@centro.empresa_id)
  end

  def show
		@centro = Centro.find(params[:id])
		@t_activos = @centro.trabajadors.where(activo: 1)
		@t_inactivos = @centro.trabajadors.where(activo: 0)
		@t_incendio = @centro.trabajadors.where(rincendio: 1)
		@t_evacuacion = @centro.trabajadors.where(revacuacion: 1)
		@t_auxilio = @centro.trabajadors.where(rauxilio: 1)

  end

  def new
		@empresa = Empresa.find(params[:empresa_id])
    @centro = Centro.new
		@localizacion_select = ["Edificio de oficinas", "Local comercial",
			"Nave industrial", "Edificio residencial"]
		@entorno_select = ["Comercial (locales y actividades comerciales predominantes)",
			"Industrial (naves y actividades comerciales predominantes)",
			"Residencial (viviendas residenciales predominantes)"]
		@sino_select = {"SI":1, "NO":0}
		@accesos_select = ["Desde calle peatonal",
		 	"Desde el acerado de una calle con tráfico rodado",
	 		"Desde zona privada (parking, etc.)",
			"Desde zonas comunes del edificio en que se ubica el centro"]
		@aacc = ["Instalación centralizada", "Instalación de splits individuales",
			"Instalación de Fan Coils", "Compresor en cubierta",
			"Compresor en sala de máquinas", "Compresor en otra ubicación"]
		@s_vent = ["Ventilación forzada", "Aspiración forzada en cocina (campanas de extracción)"]
		@ub_comp = ["Cubierta", "Sala de máquinas"]
  end

  def edit
		@centro = Centro.find(params[:id])
		@localizacion_select = ["Edificio de oficinas", "Local comercial",
			"Nave industrial", "Edificio residencial"]
		@entorno_select = ["Comercial (locales y actividades comerciales predominantes)",
			"Industrial (naves y actividades comerciales predominantes)",
			"Residencial (viviendas residenciales predominantes)"]
		@sino_select = {"SI":1, "NO":0}
		@accesos_select = ["Desde calle peatonal",
		 	"Desde el acerado de una calle con tráfico rodado",
	 		"Desde zona privada (parking, etc.)",
			"Desde zonas comunes del edificio en que se ubica el centro"]
		@aacc = ["Instalación centralizada", "Instalación de splits individuales",
			"Instalación de Fan Coils", "Compresor en cubierta",
			"Compresor en sala de máquinas", "Compresor en otra ubicación"]
		@s_vent = ["Ventilación forzada", "Aspiración forzada en cocina (campanas de extracción)"]
		@ub_comp = ["Cubierta", "Sala de máquinas"]
  end

  def create
		@empresa = Empresa.find(params[:empresa_id])
    @centro = Centro.new(centro_params)
		@centro.empresa_id = @empresa.id
		@centro.n_trabajadores = @centro.trabajadors.count

    respond_to do |format|
      if @centro.save
        format.html { redirect_to empresa_path(@empresa),
					notice: "Centro guardado correctamente" }
        format.json { render :show, status: :created, location: @centro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @centro.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @centro.update(centro_params)
        format.html { redirect_to empresa_path(@centro.empresa_id),
					notice: "Centro guardado correctamente" }
        format.json { render :show, status: :ok, location: @centro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @centro.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @centro.destroy
    respond_to do |format|
      format.html { redirect_to empresa_path(@centro.empresa_id),
				 notice: "Centro eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centro
      @centro = Centro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def centro_params
      params.require(:centro).permit(:nombre, :direccion, :poblacion, :provincia,
				:cp, :actividad, :n_trabajadores, :localizacion, :superficie,
				:plantas_ocupadas, :aforo_max, :entorno, :act_derecha, :act_izquierda,
				:act_frontal, :act_trasera, :act_superior, :act_inferior, :acceso_empleados,
				:accesso_clientes, :inst_baja_tension, :ubicacion_cuadro_general, :es_ct,
				:ub_interior_ct, :ub_caseta_ext_ct, :potencia_ct, :e_mant_ct, :es_aacc,
				:sit_aacc, :es_ventilacion, :sit_ventilacion, :es_ascensor, :n_ascensores,
				:es_frio, :n_cam_congelados, :n_cam_frio, :ub_compresores, :otras_inst,
				:empresa_id)
    end
end
