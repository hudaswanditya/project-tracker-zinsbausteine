require 'test_helper'

class PlatformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @platform = platforms(:one)
    @project = @platform.projects.first
  end

  test "should get index" do
    get platforms_url
    assert_response :success
  end

  test "total amount of invesment" do
    pp @platform.id
    assert "€ 3,000.00", total_amount_of_invesment(@platform)
  end

  test "the fastest project" do
    assert "MyString2", fastest_project(@platform)
  end

  test "the fastest platform" do
    assert "MyString2", fastest_platform
  end

  test "should show platform" do
    fastest_project(@platform)
    get platform_url(@platform)
    assert_response :success
  end

end
