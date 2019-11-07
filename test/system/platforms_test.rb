require "application_system_test_case"

class PlatformsTest < ApplicationSystemTestCase
  setup do
    @platform = platforms(:one)
  end

  test "visiting the index" do
    visit platforms_url
    assert_selector "h1", text: "Platforms"
  end


end
