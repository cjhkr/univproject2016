require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get univ" do
    get :univ
    assert_response :success
  end

  test "should get artist" do
    get :artist
    assert_response :success
  end

  test "should get date" do
    get :date
    assert_response :success
  end

  test "should get feeling_lucky" do
    get :feeling_lucky
    assert_response :success
  end

  test "should get result_univ" do
    get :result_univ
    assert_response :success
  end

  test "should get result_date" do
    get :result_date
    assert_response :success
  end

end
