require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @platform = platforms(:one)
    @project = @platform.projects.first
  end

  test "should show project" do
    get platform_project_url(@platform, @project)
    assert_response :success
  end
end
