class MedidasController < ApplicationController
  before_action :set_medida, only: %i[ update destroy ]

  # GET /medidas/new
  def new
		@centro = Centro.find(params[:centro_id])
    @medida = Medida.new
  end

	def edit
		@medida = Medida.find(params[:id])
		@centro = @medida.centro
		@empresa = Empresa.find(@centro.empresa_id)
	end

  # POST /medidas or /medidas.json
  def create
		@centro = Centro.find(params[:centro_id])
		empresa = Empresa.find(@centro.empresa_id)
    @medida = Medida.new(medida_params)
		@medida.centro_id = @centro.id

    respond_to do |format|
      if @medida.save
        format.html { redirect_to empresa, notice: "Medida was successfully created." }
        format.json { render :show, status: :created, location: @medida }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medidas/1 or /medidas/1.json
  def update
		@centro = Centro.find(@medida.centro_id)
		empresa = Empresa.find(@centro.empresa_id)
    respond_to do |format|
      if @medida.update(medida_params)
        format.html { redirect_to empresa, notice: "Medida was successfully updated." }
        format.json { render :show, status: :ok, location: @medida }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medidas/1 or /medidas/1.json
  def destroy
    @medida.destroy
    respond_to do |format|
      format.html { redirect_to medidas_url, notice: "Medida was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medida
      @medida = Medida.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medida_params
      params.require(:medida).permit(:m1, :m2, :m3, :m4, :m5, :m6, :m7, :m8,
			  :m9, :m10, :m11, :m12, :m13, :m14, :m15, :m16, :m17, :m18, :m19, :m20,
				:m21, :m22, :m23, :m24, :m25, :m26, :m27, :m28, :m29, :m30, :m31, :m32,
				:m33, :m34, :m35, :m36, :m37, :m38, :m39, :m40, :m41, :m42, :m43, :m44,
				:m45, :m46, :empresa)
    end
end
