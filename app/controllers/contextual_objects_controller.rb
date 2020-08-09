class ContextualObjectsController < ApplicationController
  before_action :set_contextual_object, only: [:show, :edit, :update, :destroy]

  # GET /contextual_objects
  # GET /contextual_objects.json
  def index
    @contextual_objects = ContextualObject.all
  end

  # GET /contextual_objects/1
  # GET /contextual_objects/1.json
  def show
  end

  # GET /contextual_objects/new
  def new
    @contextual_object = ContextualObject.new
  end

  # GET /contextual_objects/1/edit
  def edit
  end

  # POST /contextual_objects
  # POST /contextual_objects.json
  def create
    @contextual_object = ContextualObject.new(contextual_object_params)

    respond_to do |format|
      if @contextual_object.save
        format.html { redirect_to @contextual_object, notice: 'Contextual object was successfully created.' }
        format.json { render :show, status: :created, location: @contextual_object }
      else
        format.html { render :new }
        format.json { render json: @contextual_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contextual_objects/1
  # PATCH/PUT /contextual_objects/1.json
  def update
    respond_to do |format|
      if @contextual_object.update(contextual_object_params)
        format.html { redirect_to @contextual_object, notice: 'Contextual object was successfully updated.' }
        format.json { render :show, status: :ok, location: @contextual_object }
      else
        format.html { render :edit }
        format.json { render json: @contextual_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contextual_objects/1
  # DELETE /contextual_objects/1.json
  def destroy
    @contextual_object.destroy
    respond_to do |format|
      format.html { redirect_to contextual_objects_url, notice: 'Contextual object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contextual_object
      @contextual_object = ContextualObject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contextual_object_params
      params.require(:contextual_object).permit(:header_image, :footer_image, body_images: [])
    end
end
