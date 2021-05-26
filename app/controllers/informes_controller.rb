require 'openxml_docx_templater'

class InformesController < ApplicationController
	include OpenxmlDocxTemplater::Generator
	before_action :authenticate_user!
  before_action :set_informe, only: %i[ update ]

	def new
		@empresa = Empresa.find(params[:empresa_id])
		@informe = Informe.new
		@tipoInforme = {"Plan de prevención":"PLAN_PREVENCION",
			"Informe de Trabajadores":"IFORME_TRABAJADORES"}
	end

  # POST /informes or /informes.json
  def create
		@empresa = Empresa.find(params[:empresa_id])
    @informe = Informe.new(informe_params)
		@informe.empresa_id = @empresa.id
    respond_to do |format|
      if @informe.save
        format.html { redirect_to @empresa, notice: "Informe was successfully created." }
        format.json { render :show, status: :created, location: @informe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @informe.errors, status: :unprocessable_entity }
      end
    end
  end

	

	def reportEval
		#renderizacion
		render_msword "#{Rails.root}/public/plantillas/EVALUACION_PUESTO.docx"

		send_file "#{Rails.root}/public/plantillas/EVALUACION_PUESTO_output.docx",
			:disposition => "attachment"
	end

  # DELETE /informes/1 or /informes/1.json
  def destroy
		@informe = Informe.find(params[:id])
		@nombreEmpresa = @informe.empresa
    @informe.destroy
    respond_to do |format|
      format.html { redirect_to  @informe.empresa, notice: "Informe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informe
      @informe = Informe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def informe_params
      params.require(:informe).permit(:tipo, :ciudadFirma, :fechaFirma, :empresa_id)
    end
end
