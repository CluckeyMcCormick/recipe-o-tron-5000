class InputQuantitiesController < ApplicationController
  before_action :set_input_quantity, only: [:show, :edit, :update, :destroy]

  # GET /input_quantities
  # GET /input_quantities.json
  def index
    @input_quantities = InputQuantity.all
  end

  # GET /input_quantities/1
  # GET /input_quantities/1.json
  def show
  end

  # GET /input_quantities/new
  def new
    @input_quantity = InputQuantity.new
  end

  # GET /input_quantities/1/edit
  def edit
  end

  # POST /input_quantities
  # POST /input_quantities.json
  def create
    @input_quantity = InputQuantity.new(input_quantity_params)

    respond_to do |format|
      if @input_quantity.save
        format.html { redirect_to @input_quantity, notice: 'Input quantity was successfully created.' }
        format.json { render :show, status: :created, location: @input_quantity }
      else
        format.html { render :new }
        format.json { render json: @input_quantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /input_quantities/1
  # PATCH/PUT /input_quantities/1.json
  def update
    respond_to do |format|
      if @input_quantity.update(input_quantity_params)
        format.html { redirect_to @input_quantity, notice: 'Input quantity was successfully updated.' }
        format.json { render :show, status: :ok, location: @input_quantity }
      else
        format.html { render :edit }
        format.json { render json: @input_quantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /input_quantities/1
  # DELETE /input_quantities/1.json
  def destroy
    @input_quantity.destroy
    respond_to do |format|
      format.html { redirect_to input_quantities_url, notice: 'Input quantity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_input_quantity
      @input_quantity = InputQuantity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def input_quantity_params
      params.require(:input_quantity).permit(:count, :recipes_id, :items_id)
    end
end
