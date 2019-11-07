class ProjectsController < ApplicationController
  before_action  :get_platform, :set_project, only: [:show]

  # GET /projects/1
  # GET /projects/1.json
  def show
    @capture_details = @project.capture_details
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = @platform.projects.find(params[:id])
    end

    def get_platform
      @platform = Platform.find(params[:platform_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:platform_id, :name, :funding_amount, :city, :developer_name, :duration_in_months, :interest_rate)
    end
end
