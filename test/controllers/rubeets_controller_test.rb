require 'test_helper'

class RubeetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rubeets_index_url
    assert_response :success
  end

end
