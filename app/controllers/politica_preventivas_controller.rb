class PoliticaPreventivasController < ApplicationController
	before_action :authenticate_user!
  before_action :set_politica_preventiva, only: %i[ show edit update destroy ]

  # GET /politica_preventivas or /politica_preventivas.json
  def index
		@empresa = Empresa.find(params[:empresa_id])
    @politica_preventiva = @empresa.politica_preventiva
  end

  # GET /politica_preventivas/1 or /politica_preventivas/1.json
  def show
		@politica_preventiva = PoliticaPreventiva.find(params[:id])
		@empresa = @politica_preventiva.empresa
  end

  # GET /politica_preventivas/new
  def new
		@empresa = Empresa.find(params[:empresa_id])
    @politica_preventiva = PoliticaPreventiva.new
  end

  # GET /politica_preventivas/1/edit
  def edit
		@empresa = Empresa.find(params[:id])
		@politica_preventiva = @empresa.politica_preventiva
  end

  # POST /politica_preventivas or /politica_preventivas.json
  def create
		@empresa = Empresa.find(params[:empresa_id])
    @politica_preventiva = PoliticaPreventiva.new(politica_preventiva_params)
		@politica_preventiva.empresa_id = @empresa.id

    respond_to do |format|
      if @politica_preventiva.save
        format.html { redirect_to @politica_preventiva, notice: "Politica preventiva was successfully created." }
        format.json { render :show, status: :created, location: @politica_preventiva }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @politica_preventiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /politica_preventivas/1 or /politica_preventivas/1.json
  def update
		@empresa = Empresa.find(@politica_preventiva.empresa_id)
    respond_to do |format|
      if @politica_preventiva.update(politica_preventiva_params)
        format.html { redirect_to @empresa, notice: "Politica preventiva was successfully updated." }
        format.json { render :show, status: :ok, location: @politica_preventiva }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @politica_preventiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politica_preventivas/1 or /politica_preventivas/1.json
  def destroy
    @politica_preventiva.destroy
    respond_to do |format|
      format.html { redirect_to politica_preventivas_url, notice: "Politica preventiva was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politica_preventiva
      @politica_preventiva = PoliticaPreventiva.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def politica_preventiva_params
      params.require(:politica_preventiva).permit(:pp1, :pp2, :pp3, :pp4, :pp5, :pp6, :pp7, :pp8, :pp9, :pp10, :pp11, :pp12, :empresa_id)
    end
end
