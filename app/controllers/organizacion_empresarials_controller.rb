class OrganizacionEmpresarialsController < ApplicationController
	before_action :authenticate_user!
  before_action :set_organizacion_empresarial, only: %i[ create update ]

	def new
		@empresa = Empresa.find(params[:empresa_id])
		@organizacion_empresarial = OrganizacionEmpresarial.new
	end

	def create
		@empresa = Empresa.find(params[:empresa_id])
		@politica_preventiva = OrganizacionEmpresarial.new(organizacion_empresarial_params)
		@politica_preventiva.empresa_id = @empresa.id
    respond_to do |format|
      if @politica_preventiva.save
        format.html { redirect_to @empresa, notice: "Politica preventiva was successfully created." }
      end
    end
  end

  # PATCH/PUT /politica_preventivas/1 or /politica_preventivas/1.json
  def update
		@organizacion_empresarial = OrganizacionEmpresarial.find(params[:id])
		@empresa = Empresa.find(@organizacion_empresarial.empresa_id)
    respond_to do |format|
      if @organizacion_empresarial.update(organizacion_empresarial_params)
        format.html { redirect_to @empresa, notice: "Politica preventiva was successfully updated." }
        format.json { render :show, status: :ok, location: @organizacion_empresarial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organizacion_empresarial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizacion_empresarials/1 or /organizacion_empresarials/1.json
  def destroy
    @organizacion_empresarial.destroy
    respond_to do |format|
      format.html { redirect_to organizacion_empresarials_url, notice: "Organizacion empresarial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organizacion_empresarial
      @organizacion_empresarial = OrganizacionEmpresarial.new
    end

    # Only allow a list of trusted parameters through.
    def organizacion_empresarial_params
      params.require(:organizacion_empresarial).permit(:d, :mi, :t, :dp, :empresa_id)
    end
end
