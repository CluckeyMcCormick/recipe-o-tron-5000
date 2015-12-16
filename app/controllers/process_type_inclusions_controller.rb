class ProcessTypeInclusionsController < ApplicationController
  before_action :set_process_type_inclusion, only: [:show, :edit, :update, :destroy]

  # GET /process_type_inclusions
  # GET /process_type_inclusions.json
  def index
    @process_type_inclusions = ProcessTypeInclusion.all
  end

  # GET /process_type_inclusions/1
  # GET /process_type_inclusions/1.json
  def show
  end

  # GET /process_type_inclusions/new
  def new
    @process_type_inclusion = ProcessTypeInclusion.new
  end

  # GET /process_type_inclusions/1/edit
  def edit
  end

  # POST /process_type_inclusions
  # POST /process_type_inclusions.json
  def create
    @process_type_inclusion = ProcessTypeInclusion.new(process_type_inclusion_params)

    respond_to do |format|
      if @process_type_inclusion.save
        format.html { redirect_to @process_type_inclusion, notice: 'Process type inclusion was successfully created.' }
        format.json { render :show, status: :created, location: @process_type_inclusion }
      else
        format.html { render :new }
        format.json { render json: @process_type_inclusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_type_inclusions/1
  # PATCH/PUT /process_type_inclusions/1.json
  def update
    respond_to do |format|
      if @process_type_inclusion.update(process_type_inclusion_params)
        format.html { redirect_to @process_type_inclusion, notice: 'Process type inclusion was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_type_inclusion }
      else
        format.html { render :edit }
        format.json { render json: @process_type_inclusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_type_inclusions/1
  # DELETE /process_type_inclusions/1.json
  def destroy
    @process_type_inclusion.destroy
    respond_to do |format|
      format.html { redirect_to process_type_inclusions_url, notice: 'Process type inclusion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_type_inclusion
      @process_type_inclusion = ProcessTypeInclusion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_type_inclusion_params
      params.require(:process_type_inclusion).permit(:process_type_id, :item_class_id)
    end
end
