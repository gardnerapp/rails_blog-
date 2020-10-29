require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
  end

  test "assert_react navbar with proper Social Media Handles" do
    get root_url
    assert_react_component "Navbar" do |props|
      assert_equal "https://twitter.com", props[:twitter], "Wrong Twitter Handle"
      assert_equal "https://instagram.com", props[:instagram], "Wrong Instagram Handle"
      assert_equal "https://linkedin.com", props[:linkedin], "Wrong Linkedin Handle "
    end
  end

end
