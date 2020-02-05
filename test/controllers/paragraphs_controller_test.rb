require 'test_helper'

class ParagraphsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get paragraphs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get paragraphs_destroy_url
    assert_response :success
  end

end
