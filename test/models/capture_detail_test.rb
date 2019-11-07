require 'test_helper'

class CaptureDetailTest < ActiveSupport::TestCase
  setup do
    @capture_detail = capture_details(:one)
  end
  test "the formated date" do
    assert "2017-05-01", @capture_detail.get_formated_date
  end
end
