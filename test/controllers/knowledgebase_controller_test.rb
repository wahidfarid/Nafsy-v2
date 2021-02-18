require "test_helper"

class KnowledgebaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get knowledgebase_index_url
    assert_response :success
  end

  test "should get show" do
    get knowledgebase_show_url
    assert_response :success
  end

  test "should get edit" do
    get knowledgebase_edit_url
    assert_response :success
  end
end
