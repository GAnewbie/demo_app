class GAnewbiesController < ApplicationController
  before_action :set_g_anewby, only: [:show, :edit, :update, :destroy]

  # GET /g_anewbies
  # GET /g_anewbies.json
  def index
    @g_anewbies = GAnewbie.all
  end

  # GET /g_anewbies/1
  # GET /g_anewbies/1.json
  def show
  end

  # GET /g_anewbies/new
  def new
    @g_anewby = GAnewbie.new
  end

  # GET /g_anewbies/1/edit
  def edit
  end

  # POST /g_anewbies
  # POST /g_anewbies.json
  def create
    @g_anewby = GAnewbie.new(g_anewby_params)

    respond_to do |format|
      if @g_anewby.save
        format.html { redirect_to @g_anewby, notice: 'G anewbie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @g_anewby }
      else
        format.html { render action: 'new' }
        format.json { render json: @g_anewby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g_anewbies/1
  # PATCH/PUT /g_anewbies/1.json
  def update
    respond_to do |format|
      if @g_anewby.update(g_anewby_params)
        format.html { redirect_to @g_anewby, notice: 'G anewbie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @g_anewby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g_anewbies/1
  # DELETE /g_anewbies/1.json
  def destroy
    @g_anewby.destroy
    respond_to do |format|
      format.html { redirect_to g_anewbies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g_anewby
      @g_anewby = GAnewbie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g_anewby_params
      params.require(:g_anewby).permit(:name, :email)
    end
end
