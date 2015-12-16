class RecipeInclusionsController < ApplicationController
  before_action :set_recipe_inclusion, only: [:show, :edit, :update, :destroy]

  # GET /recipe_inclusions
  # GET /recipe_inclusions.json
  def index
    @recipe_inclusions = RecipeInclusion.all
  end

  # GET /recipe_inclusions/1
  # GET /recipe_inclusions/1.json
  def show
  end

  # GET /recipe_inclusions/new
  def new
    @recipe_inclusion = RecipeInclusion.new
  end

  # GET /recipe_inclusions/1/edit
  def edit
  end

  # POST /recipe_inclusions
  # POST /recipe_inclusions.json
  def create
    @recipe_inclusion = RecipeInclusion.new(recipe_inclusion_params)

    respond_to do |format|
      if @recipe_inclusion.save
        format.html { redirect_to @recipe_inclusion, notice: 'Recipe inclusion was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_inclusion }
      else
        format.html { render :new }
        format.json { render json: @recipe_inclusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_inclusions/1
  # PATCH/PUT /recipe_inclusions/1.json
  def update
    respond_to do |format|
      if @recipe_inclusion.update(recipe_inclusion_params)
        format.html { redirect_to @recipe_inclusion, notice: 'Recipe inclusion was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_inclusion }
      else
        format.html { render :edit }
        format.json { render json: @recipe_inclusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_inclusions/1
  # DELETE /recipe_inclusions/1.json
  def destroy
    @recipe_inclusion.destroy
    respond_to do |format|
      format.html { redirect_to recipe_inclusions_url, notice: 'Recipe inclusion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_inclusion
      @recipe_inclusion = RecipeInclusion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_inclusion_params
      params.require(:recipe_inclusion).permit(:process_type_id, :recipe_id)
    end
end
