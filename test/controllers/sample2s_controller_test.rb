require 'test_helper'

class Sample2sControllerTest < ActionController::TestCase
  setup do
    @sample2 = sample2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample2" do
    assert_difference('Sample2.count') do
      post :create, sample2: { col1: @sample2.col1 }
    end

    assert_redirected_to sample2_path(assigns(:sample2))
  end

  test "should show sample2" do
    get :show, id: @sample2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample2
    assert_response :success
  end

  test "should update sample2" do
    patch :update, id: @sample2, sample2: { col1: @sample2.col1 }
    assert_redirected_to sample2_path(assigns(:sample2))
  end

  test "should destroy sample2" do
    assert_difference('Sample2.count', -1) do
      delete :destroy, id: @sample2
    end

    assert_redirected_to sample2s_path
  end
end
