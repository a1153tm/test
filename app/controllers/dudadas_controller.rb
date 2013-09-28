class DudadasController < ApplicationController
  before_action :set_dudada, only: [:show, :edit, :update, :destroy]

  # GET /dudadas
  # GET /dudadas.json
  def index
    @dudadas = Dudada.all
  end

  # GET /dudadas/1
  # GET /dudadas/1.json
  def show
  end

  # GET /dudadas/new
  def new
    @dudada = Dudada.new
  end

  # GET /dudadas/1/edit
  def edit
  end

  # POST /dudadas
  # POST /dudadas.json
  def create
    @dudada = Dudada.new(dudada_params)

    respond_to do |format|
      if @dudada.save
        format.html { redirect_to @dudada, notice: 'Dudada was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dudada }
      else
        format.html { render action: 'new' }
        format.json { render json: @dudada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dudadas/1
  # PATCH/PUT /dudadas/1.json
  def update
    respond_to do |format|
      if @dudada.update(dudada_params)
        format.html { redirect_to @dudada, notice: 'Dudada was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dudada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dudadas/1
  # DELETE /dudadas/1.json
  def destroy
    @dudada.destroy
    respond_to do |format|
      format.html { redirect_to dudadas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dudada
      @dudada = Dudada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dudada_params
      params.require(:dudada).permit(:aaa)
    end
end
