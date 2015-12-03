class RunnsController < ApplicationController
  before_action :set_runn, only: [:show, :edit, :update, :destroy]

  # GET /runns
  # GET /runns.json
  def index
    @runns = Runn.all
  end

  # GET /runns/1
  # GET /runns/1.json
  def show
  end

  # GET /runns/new
  def new
    @runn = Runn.new
  end

  # GET /runns/1/edit
  def edit
  end

  # POST /runns
  # POST /runns.json
  def create
    @runn = Runn.new(runn_params)

    respond_to do |format|
      if @runn.save
        format.html { redirect_to @runn, notice: 'Runn was successfully created.' }
        format.json { render :show, status: :created, location: @runn }
      else
        format.html { render :new }
        format.json { render json: @runn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runns/1
  # PATCH/PUT /runns/1.json
  def update
    respond_to do |format|
      if @runn.update(runn_params)
        format.html { redirect_to @runn, notice: 'Runn was successfully updated.' }
        format.json { render :show, status: :ok, location: @runn }
      else
        format.html { render :edit }
        format.json { render json: @runn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runns/1
  # DELETE /runns/1.json
  def destroy
    @runn.destroy
    respond_to do |format|
      format.html { redirect_to runns_url, notice: 'Runn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_runn
      @runn = Runn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def runn_params
      params.require(:runn).permit(:amenities, :ident, :occupied, :size, :ward_id)
    end
end
