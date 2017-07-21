require 'test_helper'

class ChittersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chitter = chitters(:one)
  end

  test "should get index" do
    get chitters_url
    assert_response :success
  end

  test "should get new" do
    get new_chitter_url
    assert_response :success
  end

  test "should create chitter" do
    assert_difference('Chitter.count') do
      post chitters_url, params: { chitter: { body: @chitter.body, user_id: @chitter.user_id } }
    end

    assert_redirected_to chitter_url(Chitter.last)
  end

  test "should show chitter" do
    get chitter_url(@chitter)
    assert_response :success
  end

  test "should get edit" do
    get edit_chitter_url(@chitter)
    assert_response :success
  end

  test "should update chitter" do
    patch chitter_url(@chitter), params: { chitter: { body: @chitter.body, user_id: @chitter.user_id } }
    assert_redirected_to chitter_url(@chitter)
  end

  test "should destroy chitter" do
    assert_difference('Chitter.count', -1) do
      delete chitter_url(@chitter)
    end

    assert_redirected_to chitters_url
  end
end
