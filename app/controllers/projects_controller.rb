class ProjectsController < ApplicationController
  load_and_authorize_resource
  before_action :get_all_projects, only: [:index, :front_page_gallery, :arc_design_index, :gallery, :graphic_design_index, :illustration_index, :product_design_index]
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :gallery, :front_page_gallery, :index, :arc_design_index, :graphic_design_index, :illustration_index, :product_design_index]

  # GET /projects
  # GET /projects.json
  def index
  end

  def arc_design_index
  end

  def graphic_design_index
  end

  def illustration_index
  end

  def product_design_index
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  def gallery
  end

  def front_page_gallery
  end

  # GET /projects/new
  def new
    @project = current_user.projects.build
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = current_user.projects.build(project_params)
    @project.header_image.attach(params[:project][:header_image])
    @project.body_images.attach(params[:project][:body_images])
    @project.footer_image.attach(params[:project][:footer_image])

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def get_all_projects
      @project = Project.all
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :subtitle, :year, :project_type, :intro, :body, :outro, :project_team, :header_image, :footer_image, :architectural_design, :graphic_design, :illustration, :product_design, :user_id, :alt_grid_layout, :thesis_grid_layout, :two_grid_layout, :three_grid_layout, body_images: [])
    end
end
