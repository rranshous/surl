class SlinksController < ApplicationController
  before_action :set_slink, only: [:show, :edit, :update, :destroy]

  def public
    @new_slink = Slink.new
  end

  # GET /slinks
  # GET /slinks.json
  def index
    @slinks = Slink.all
    @new_slink = Slink.new
  end

  # GET /slinks/1
  # GET /slinks/1.json
  def show
    redirect_to @slink.url
  end

  # GET /slinks/new
  def new
    @slink = Slink.new
  end

  # GET /slinks/1/edit
  def edit
  end

  # POST /slinks
  # POST /slinks.json
  def create
    @slink = Slink.new(slink_params)

    respond_to do |format|
      if @slink.save
        format.html { redirect_to @slink, notice: 'Slink was successfully created.' }
        format.json { render action: 'show', status: :created, location: @slink }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @slink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slinks/1
  # PATCH/PUT /slinks/1.json
  def update
    respond_to do |format|
      if @slink.update(slink_params)
        format.html { redirect_to @slink, notice: 'Slink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @slink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slinks/1
  # DELETE /slinks/1.json
  def destroy
    @slink.destroy
    respond_to do |format|
      format.html { redirect_to slinks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slink
      @slink = Slink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slink_params
      params.require(:slink).permit(:url)
    end
end
