require 'openxml_docx_templater'

class EmpresasController < ApplicationController
	include OpenxmlDocxTemplater::Generator
	before_action :authenticate_user!
  before_action :set_empresa, only: %i[ show edit update destroy ]

  # GET /empresas or /empresas.json
  def index
    @empresas = Empresa.all
  end

  # GET /empresas/1 or /empresas/1.json
  def show
		empresa = Empresa.find(params[:id])
		@t_activos = empresa.trabajadors.where(activo: 1)
		@pagy_inactivo, @t_baja = pagy(empresa.trabajadors.where(activo: 0))
		@politica_preventiva = empresa.politica_preventiva
		@organizacion_empresarial = empresa.organizacion_empresarial
		@practica = empresa.practica
		@centros_m = empresa.centros
		@presupuesto = empresa.presupuesto
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new
		@t_fuera_select = {"SI":1, "NO":0}
  end

  # GET /empresas/1/edit
  def edit
		@t_fuera_select = {"SI":1, "NO":0}
  end

  # POST /empresas or /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)

    respond_to do |format|
      if @empresa.save
        format.html { redirect_to @empresa, notice: "Empresa was successfully created." }
        format.json { render :show, status: :created, location: @empresa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresas/1 or /empresas/1.json
  def update
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to @empresa, notice: "Empresa was successfully updated." }
        format.json { render :show, status: :ok, location: @empresa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas/1 or /empresas/1.json
  def destroy
    @empresa.destroy
    respond_to do |format|
      format.html { redirect_to empresas_url, notice: "Empresa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

	def reportPlan
		empresa = Empresa.find(params[:id])
		@nombreEmpresa = empresa.razon_social
		@cif = empresa.cif
		@direccion = empresa.direccion
		@poblacion = empresa.poblacion
		@cp = empresa.cp
		@provincia = empresa.provincia
		@telefono = empresa.telefono
		@email = empresa.email
		@responsables = empresa.trabajadors.where(es_responsable: 1)
		@centros = empresa.centros
		@ciudadFirma = params[:ciudadFirma]
		@fechaFirma = params[:fechaFirma].to_datetime.strftime("%d/%m/%Y")
		#Organigrama
		oe = OrganizacionEmpresarial.find_by empresa_id: empresa.id
		@organigrama = []
			if oe.d == 1
				@organigrama << "Dirección"
			end
			if oe.dp == 1
				@organigrama << "Delegados sinsicales"
			end
			if oe.mi == 1
				@organigrama << "Mandos intermedios"
			end
			if oe.t == 1
				@organigrama << "Trabajadores"
			end
		#Procedimientos
		@procedimientos = []
		pr = Practica.find_by empresa_id: empresa.id
		if pr.p1 == 1
			@procedimientos << "Trato con el público en mostrador, habitualmente de pie"
		end
		if pr.p2 == 1
			@procedimientos << "Trato con el público en mostrador, habitualmente sentado"
		end
		if pr.p3 == 1
			@procedimientos << "Venta directa al público realizando cobros en efectivo"
		end
		if pr.p4 == 1
			@procedimientos << "Trabajo con animales"
		end
		if pr.p5 == 1
			@procedimientos << "Trabajo de carga y descarga"
		end
		if pr.p6 == 1
			@procedimientos << "Contacto con residuos orgánicos, tierras, insectos, etc. (trabajos de jardinería)"
		end
		if pr.p7 == 1
			@procedimientos << "Contacto con productos químicos por vía dérmica o inhalatoria (plantas, animales, limpieza, peluquería, etc. ) "
		end
		if pr.p8 == 1
			@procedimientos << "- Cierre del centro de trabajo y activación de alarma antiatracos"
		end
		if pr.p9 == 1
			@procedimientos << "- Limpieza del centro de trabajo"
		end
		if pr.p10 == 1
			@procedimientos << "- Elaboración de comidas en cocina, manejo de herramientoas de cocina, fogones, hornos, etc. "
		end
		if pr.p11 == 1
			@procedimientos << "- Trabajos en almacén apilando material en estanterías altas (a más de 2,5 m.) "
		end
		if pr.p12 == 1
			@procedimientos << "- Subir y bajar por escaleras "
		end
		if pr.p13 == 1
			@procedimientos << "- Subir y bajar usando ascensor "
		end
		if pr.p14 == 1
			@procedimientos << "- Uso de máquinas y/o herramientas "
		end
		if pr.p15 == 1
			@procedimientos << "- Conducción de vehículos "
		end
		if pr.p16 == 1
			@procedimientos << "- Manipulación manual de cargas, uso de carros de comida, carritos de almacenamiento, maceteros, etc. "
		end
		if pr.p17 == 1
			@procedimientos << "- Utilización de botellas de gas (cocinas, etc. ) "
		end
		if pr.p18 == 1
			@procedimientos << "- Actividad ofimática, trabajo con ordenadores "
		end
		if pr.p19 == 1
			@procedimientos << "- Proceso de planchado y desmanchado "
		end
		if pr.p20 == 1
			@procedimientos << " Manejo de frutas y verduras "
		end
		if !pr.p21.blank?
			@procedimientos << "- #{pr.p21}"
		end


		#instalaciones
		@aire_no = "No hay instalación de aire acondicionado"
		@aire_si = "Instalación de calefacción/acondicionamiento de aire,consistente en "
		@ventilacion_no = "No hay instalación de ventilación"
		@aire_si = "Instalación de ventilación, consistente en "
		@ascensor_no = "No hay instalación de ascensores"
		@ascensor_si = "En el centro se encuentran instalados "
		@ascensor_si_dos = " ascensores."
		@frio_no = "No hay cámaras de frío o de congelados"
		@frio_si = "Aparatos o cámaras friforíficas, consistentes en "
		@frio_si_dos = " cámaras de congelados y "
		@frio_si_tres = " cámaras de frío."

		#emergencias
		@si = "Si"
		@no = "No"
			#incendios
			@m4 = "Instalación de seguridad contra incendios perteneciente al edificio donde se ubica la oficina"
			@m5 = "Instalación de seguridad contra incendios formadas por red de aguas y BIEs (Bocas de Incendio Equipadas)"
			@m6 = "Sistema de detección automática de incendios"
			@m7 = "Sistema de actuación automática en caso de incendios (sprinklers)"
			@m8 = "Extintores"
			@m9 = "Alumbrado de emergencia"
			@m10 = "Sistema de Alarmas"
			@m11 = "Ascensores/montacargas"
			@m25 = "Dar la alarma en el centro de trabajo"
			@m26 = "Avisar al 112"
			@m27 = "Avisar a los bomberos"
			@m28 = "Avisar a otra persona/responsable"
			@m29 = "Activar el procedimiento de evacuación de personas"
			@m30 = "Emplear los medios de extinción manual disponibles"
			@m31 = "Impedir el uso de ascensores/montacargas"

			#evacuación
			@mevac = "Señales de salvamento: "
			@m15 = "Recorrido de evacuación horizontal"
			@m16 = "Recorrido de evacuación vertical"
			@m17 = "Teléfono de salvamento"
			@m18 = "Señales de dirección de evacuación"
			@m32 = "Avisar al 112"
			@m33 = "Facilitar la evacuación de todas las personas fuera del edificio"
			@m34 = "Asegurarse de que todas las personas en el centro de trabajo son evacuadas"
			@m35 = "Avisar a la policía"
			@m36 = "Avisar a los bomberos"

			#primeros auxilios
			@m19 = "Botiquín de primeros auxilios"
			@m20 = "Señal de seguridad preceptiva del botiquín"
			@m37 = "Atención primaria al afectado (sólo personal competente en materia de primeros auxilios)"
			@m38 = "Avisar al 112"
			@m39 = "Avisar al centro médico"
			@m40 = "Avisar a la ambulancia"
			@m41 = "Avisar a otra persona/responsable"

		#presupuesto
		@presupuesto = Hash.new
		@prem = empresa.presupuesto
		@total = 0
		if !@prem.pr1.blank?
			@presupuesto["ASUNCIÓN DEL EMPRESARIO"] = @prem.pr1
			@total += @prem.pr1
		end
		if !@prem.pr2.blank?
			@presupuesto["TÉCNICO DE PREVENCIÓN"] = @prem.pr2
			@total += @prem.pr2
		end
		if !@prem.pr.blank?
			@presupuesto["TRABAJADOR DESIGNADO"] = @prem.pr
			@total += @prem.pr
		end
		if !@prem.pr4.blank?
			@presupuesto["TRABAJADOR CON OTRAS FUNCIONES DE PREVENCIÓN"] = @prem.pr4
			@total += @prem.pr4
		end
		if !@prem.pr5.blank?
			@presupuesto["OTROS RECURSOS HUMANOS"] = @prem.pr5
			@total += @prem.pr5
		end
		if !@prem.pr6.blank? || !@prem.pr7.blank? || !@prem.pr8.blank? || !@prem.pr9.blank?
			@presupuesto["Recursos materiales"] = ""
		end
		if !@prem.pr6.blank?
			@presupuesto["EQUIPOS"] = @prem.pr6
			@total += @prem.pr6
		end
		if !@prem.pr7.blank?
			@presupuesto["INSTALACIONES"] = @prem.pr7
			@total += @prem.pr7
		end
		if !@prem.pr8.blank?
			@presupuesto["MATERIAL DE OFICINA"] = @prem.pr8
			@total += @prem.pr8
		end
		if !@prem.pr9.blank?
			@presupuesto["OTROS RECURSOS MATERIALES"] = @prem.pr9
			@total += @prem.pr9
		end
		if !@prem.pr10.blank? || !@prem.pr11.blank? || !@prem.pr12.blank? || !@prem.pr13.blank? || !@prem.pr14.blank? || !@prem.pr15.blank?
			@presupuesto["Servicios concertados"] = ""
		end
		if !@prem.pr10.blank?
			@presupuesto["SERVICIO DE PREVENCIÓN AJENO"] = @prem.pr10
			@total += @prem.pr10
		end
		if !@prem.pr11.blank?
			@presupuesto["LABORATORIO DE ANÁLISIS"] = @prem.pr11
			@total += @prem.pr11
		end
		if !@prem.pr12.blank?
			@presupuesto["LABORATORIO HIGIÉNICO"] = @prem.pr12
			@total += @prem.pr12
		end
		if !@prem.pr13.blank?
			@presupuesto["REVISIONES SUJETAS ANORMATIVA"] = @prem.pr13
			@total += @prem.pr13
		end
		if !@prem.pr14.blank?
			@presupuesto["NORMALIZACIÓN DE EQUIPOS DE TRABAJO POR EMPRESAS ACREDITADAS"] = @prem.pr14
			@total += @prem.pr14
		end
		if !@prem.pr15.blank?
			@presupuesto["OTROS SERVICIOS"] = @prem.pr15
			@total += @prem.pr15
		end
		if !@prem.pr16.blank? || !@prem.pr17.blank?
			@presupuesto["Recursos materiales"] = ""
		end
		if !@prem.pr16.blank?
			@presupuesto["ACTIVIDADES PROGRAMADAS"] = @prem.pr16
			@total += @prem.pr16
		end
		if !@prem.pr17.blank?
			@presupuesto["OTRAS ACTIVIDADES"] = @prem.pr17
			@total += @prem.pr17
		end
		@presupuesto["Total"] = @total

		#renderizacion
		render_msword "#{Rails.root}/public/plantillas/PLAN_PREVENCION.docx"

		send_file "#{Rails.root}/public/plantillas/PLAN_PREVENCION_output.docx",
			:disposition => "attachment"

	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empresa_params
      params.require(:empresa).permit(:razon_social, :cif, :direccion, :poblacion, :provincia, :cp, :telefono, :email, :t_fuera)
    end
end
