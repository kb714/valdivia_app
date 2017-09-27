require 'test_helper'

class Admin::NavigationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_navigations_index_url
    assert_response :success
  end

end
