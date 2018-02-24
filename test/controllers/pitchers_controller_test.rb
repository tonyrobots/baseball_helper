require 'test_helper'

class PitchersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pitcher = pitchers(:one)
  end

  test "should get index" do
    get pitchers_url
    assert_response :success
  end

  test "should get new" do
    get new_pitcher_url
    assert_response :success
  end

  test "should create pitcher" do
    assert_difference('Pitcher.count') do
      post pitchers_url, params: { pitcher: {  } }
    end

    assert_redirected_to pitcher_url(Pitcher.last)
  end

  test "should show pitcher" do
    get pitcher_url(@pitcher)
    assert_response :success
  end

  test "should get edit" do
    get edit_pitcher_url(@pitcher)
    assert_response :success
  end

  test "should update pitcher" do
    patch pitcher_url(@pitcher), params: { pitcher: {  } }
    assert_redirected_to pitcher_url(@pitcher)
  end

  test "should destroy pitcher" do
    assert_difference('Pitcher.count', -1) do
      delete pitcher_url(@pitcher)
    end

    assert_redirected_to pitchers_url
  end
end
