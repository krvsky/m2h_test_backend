require 'test_helper'

class Api::V1::CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_courses_index_url
    assert_response :success
  end

  test 'should courses list' do
    get api_v1_courses_url
    assert_equal Course.all.to_json, response.body
  end
end
