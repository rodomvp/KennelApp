class FeedListsController < ApplicationController
  before_action :set_feed_list, only: [:show, :edit, :update, :destroy]

  # GET /feed_lists
  # GET /feed_lists.json
  def index
    @feed_lists = FeedList.all
  end

  # GET /feed_lists/1
  # GET /feed_lists/1.json
  def show
  end

  # GET /feed_lists/new
  def new
    @feed_list = FeedList.new
  end

  # GET /feed_lists/1/edit
  def edit
  end

  # POST /feed_lists
  # POST /feed_lists.json
  def create
    @feed_list = FeedList.new(feed_list_params)

    respond_to do |format|
      if @feed_list.save
        format.html { redirect_to @feed_list, notice: 'Feed list was successfully created.' }
        format.json { render :show, status: :created, location: @feed_list }
      else
        format.html { render :new }
        format.json { render json: @feed_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feed_lists/1
  # PATCH/PUT /feed_lists/1.json
  def update
    respond_to do |format|
      if @feed_list.update(feed_list_params)
        format.html { redirect_to @feed_list, notice: 'Feed list was successfully updated.' }
        format.json { render :show, status: :ok, location: @feed_list }
      else
        format.html { render :edit }
        format.json { render json: @feed_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_lists/1
  # DELETE /feed_lists/1.json
  def destroy
    @feed_list.destroy
    respond_to do |format|
      format.html { redirect_to feed_lists_url, notice: 'Feed list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed_list
      @feed_list = FeedList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feed_list_params
      params[:feed_list]
    end
end
