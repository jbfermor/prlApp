class PracticasController < ApplicationController
  before_action :set_practica, only: %i[ edit update destroy ]

  # GET /practicas/new
  def new
		@empresa = Empresa.find(params[:empresa_id])
    @practica = Practica.new
		@practica.empresa_id = @empresa.id
  end

  # POST /practicas or /practicas.json
  def create
		@empresa = Empresa.find(params[:empresa_id])
    @practica = Practica.new(practica_params)
		@practica.empresa_id = @empresa.id

    respond_to do |format|
      if @practica.save
        format.html { redirect_to @empresa,
					notice: "Practica was successfully created." }
        format.json { render :show, status: :created, location: @practica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @practica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practicas/1 or /practicas/1.json
  def update
    respond_to do |format|
      if @practica.update(practica_params)
        format.html { redirect_to @practica, notice: "Practica was successfully updated." }
        format.json { render :show, status: :ok, location: @practica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @practica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practicas/1 or /practicas/1.json
  def destroy
    @practica.destroy
    respond_to do |format|
      format.html { redirect_to practicas_url, notice: "Practica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practica
      @practica = Practica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def practica_params
      params.require(:practica).permit(:p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8,
			 :p9, :p10, :p11, :p12, :p13, :p14, :p15, :p16, :p17, :p18, :p19, :p20,
			 :p21, :p22, :p23, :p24, :p25, :p26, :p27, :p28, :p29, :p30, :p31, :p32,
			 :p33, :p34, :p35, :p36, :p37, :p38, :p39, :p40, :p41, :p42, :p43, :p44,
			 :empresa)
    end
end
