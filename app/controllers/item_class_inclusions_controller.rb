class ItemClassInclusionsController < ApplicationController
  before_action :set_item_class_inclusion, only: [:show, :edit, :update, :destroy]

  # GET /item_class_inclusions
  # GET /item_class_inclusions.json
  def index
    @item_class_inclusions = ItemClassInclusion.all
  end

  # GET /item_class_inclusions/1
  # GET /item_class_inclusions/1.json
  def show
  end

  # GET /item_class_inclusions/new
  def new
    @item_class_inclusion = ItemClassInclusion.new
  end

  # GET /item_class_inclusions/1/edit
  def edit
  end

  # POST /item_class_inclusions
  # POST /item_class_inclusions.json
  def create
    @item_class_inclusion = ItemClassInclusion.new(item_class_inclusion_params)

    respond_to do |format|
      if @item_class_inclusion.save
        format.html { redirect_to @item_class_inclusion, notice: 'Item class inclusion was successfully created.' }
        format.json { render :show, status: :created, location: @item_class_inclusion }
      else
        format.html { render :new }
        format.json { render json: @item_class_inclusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_class_inclusions/1
  # PATCH/PUT /item_class_inclusions/1.json
  def update
    respond_to do |format|
      if @item_class_inclusion.update(item_class_inclusion_params)
        format.html { redirect_to @item_class_inclusion, notice: 'Item class inclusion was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_class_inclusion }
      else
        format.html { render :edit }
        format.json { render json: @item_class_inclusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_class_inclusions/1
  # DELETE /item_class_inclusions/1.json
  def destroy
    @item_class_inclusion.destroy
    respond_to do |format|
      format.html { redirect_to item_class_inclusions_url, notice: 'Item class inclusion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_class_inclusion
      @item_class_inclusion = ItemClassInclusion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_class_inclusion_params
      params.require(:item_class_inclusion).permit(:item_id, :item_class_id)
    end
end
