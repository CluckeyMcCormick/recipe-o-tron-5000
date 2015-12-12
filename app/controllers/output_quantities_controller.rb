class OutputQuantitiesController < ApplicationController
  before_action :set_output_quantity, only: [:show, :edit, :update, :destroy]

  # GET /output_quantities
  # GET /output_quantities.json
  def index
    @output_quantities = OutputQuantity.all
  end

  # GET /output_quantities/1
  # GET /output_quantities/1.json
  def show
  end

  # GET /output_quantities/new
  def new
    @output_quantity = OutputQuantity.new
  end

  # GET /output_quantities/1/edit
  def edit
  end

  # POST /output_quantities
  # POST /output_quantities.json
  def create
    @output_quantity = OutputQuantity.new(output_quantity_params)

    respond_to do |format|
      if @output_quantity.save
        format.html { redirect_to @output_quantity, notice: 'Output quantity was successfully created.' }
        format.json { render :show, status: :created, location: @output_quantity }
      else
        format.html { render :new }
        format.json { render json: @output_quantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /output_quantities/1
  # PATCH/PUT /output_quantities/1.json
  def update
    respond_to do |format|
      if @output_quantity.update(output_quantity_params)
        format.html { redirect_to @output_quantity, notice: 'Output quantity was successfully updated.' }
        format.json { render :show, status: :ok, location: @output_quantity }
      else
        format.html { render :edit }
        format.json { render json: @output_quantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /output_quantities/1
  # DELETE /output_quantities/1.json
  def destroy
    @output_quantity.destroy
    respond_to do |format|
      format.html { redirect_to output_quantities_url, notice: 'Output quantity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_output_quantity
      @output_quantity = OutputQuantity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def output_quantity_params
      params.require(:output_quantity).permit(:count, :recipe_id, :item_id)
    end
end
