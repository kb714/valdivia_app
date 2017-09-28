require 'test_helper'

class AddNameToPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get add_name_to_pages_name:string_url
    assert_response :success
  end

end
