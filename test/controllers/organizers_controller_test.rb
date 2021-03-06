require "test_helper"

class OrganizersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get organizers_index_url
    assert_response :success
  end

  test "should get new" do
    get organizers_new_url
    assert_response :success
  end

  test "should get show" do
    get organizers_show_url
    assert_response :success
  end
end
