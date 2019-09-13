require 'test_helper'

class Api::V1::VerticalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_verticals_url
    assert_response :success
  end

  test 'should verticals list' do
    get api_v1_verticals_url
    assert_equal Vertical.all.to_json, response.body
  end
end
