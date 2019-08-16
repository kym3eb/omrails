class GarmentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  # GET /garments
  # GET /garments.json
  def index
    @garments = Garment.all
  end

  # GET /garments/1
  # GET /garments/1.json
  def show
    @garment = Garment.find(params[:id])
  end

  # GET /garments/new
  def new
    @garment = current_user.garments.new
  end

  # GET /garments/1/edit
  def edit
    @garment = current_user.garments.find(params[:id])
  end

  # POST /garments
  # POST /garments.json
  def create
    @garment = current_user.garments.new(garment_params)

    respond_to do |format|
      if @garment.save
        format.html { redirect_to @garment, notice: 'Garment was successfully created.' }
        format.json { render :show, status: :created, location: @garment }
      else
        format.html { render :new }
        format.json { render json: @garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garments/1
  # PATCH/PUT /garments/1.json
  def update
    @garment = current_user.garments.find(params[:id])
    respond_to do |format|
      if @garment.update(garment_params)
        format.html { redirect_to @garment, notice: 'Garment was successfully updated.' }
        format.json { render :show, status: :ok, location: @garment }
      else
        format.html { render :edit }
        format.json { render json: @garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garments/1
  # DELETE /garments/1.json
  def destroy
    @garment = current_user.garments.find(params[:id])
    @garment.destroy
    respond_to do |format|
      format.html { redirect_to garments_url, notice: 'Garment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garment
      @garment = Garment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garment_params
      params.require(:garment).permit(:user_id, :garment_name, :garment_type, :desc)
    end
end
