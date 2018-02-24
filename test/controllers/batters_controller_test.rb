require 'test_helper'

class BattersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @batter = batters(:one)
  end

  test "should get index" do
    get batters_url
    assert_response :success
  end

  test "should get new" do
    get new_batter_url
    assert_response :success
  end

  test "should create batter" do
    assert_difference('Batter.count') do
      post batters_url, params: { batter: {  } }
    end

    assert_redirected_to batter_url(Batter.last)
  end

  test "should show batter" do
    get batter_url(@batter)
    assert_response :success
  end

  test "should get edit" do
    get edit_batter_url(@batter)
    assert_response :success
  end

  test "should update batter" do
    patch batter_url(@batter), params: { batter: {  } }
    assert_redirected_to batter_url(@batter)
  end

  test "should destroy batter" do
    assert_difference('Batter.count', -1) do
      delete batter_url(@batter)
    end

    assert_redirected_to batters_url
  end
end
