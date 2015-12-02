class WardViewsController < ApplicationController
  before_action :set_ward_view, only: [:show, :edit, :update, :destroy]

  # GET /ward_views
  # GET /ward_views.json
  def index
    @ward_views = WardView.all
  end

  # GET /ward_views/1
  # GET /ward_views/1.json
  def show
  end

  # GET /ward_views/new
  def new
    @ward_view = WardView.new
  end

  # GET /ward_views/1/edit
  def edit
  end

  # POST /ward_views
  # POST /ward_views.json
  def create
    @ward_view = WardView.new(ward_view_params)

    respond_to do |format|
      if @ward_view.save
        format.html { redirect_to @ward_view, notice: 'Ward view was successfully created.' }
        format.json { render :show, status: :created, location: @ward_view }
      else
        format.html { render :new }
        format.json { render json: @ward_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ward_views/1
  # PATCH/PUT /ward_views/1.json
  def update
    respond_to do |format|
      if @ward_view.update(ward_view_params)
        format.html { redirect_to @ward_view, notice: 'Ward view was successfully updated.' }
        format.json { render :show, status: :ok, location: @ward_view }
      else
        format.html { render :edit }
        format.json { render json: @ward_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ward_views/1
  # DELETE /ward_views/1.json
  def destroy
    @ward_view.destroy
    respond_to do |format|
      format.html { redirect_to ward_views_url, notice: 'Ward view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ward_view
      @ward_view = WardView.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ward_view_params
      params[:ward_view]
    end
end
