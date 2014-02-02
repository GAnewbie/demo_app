require 'test_helper'

class GAnewbiesControllerTest < ActionController::TestCase
  setup do
    @g_anewby = g_anewbies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g_anewbies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g_anewby" do
    assert_difference('GAnewbie.count') do
      post :create, g_anewby: { email: @g_anewby.email, name: @g_anewby.name }
    end

    assert_redirected_to g_anewby_path(assigns(:g_anewby))
  end

  test "should show g_anewby" do
    get :show, id: @g_anewby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g_anewby
    assert_response :success
  end

  test "should update g_anewby" do
    patch :update, id: @g_anewby, g_anewby: { email: @g_anewby.email, name: @g_anewby.name }
    assert_redirected_to g_anewby_path(assigns(:g_anewby))
  end

  test "should destroy g_anewby" do
    assert_difference('GAnewbie.count', -1) do
      delete :destroy, id: @g_anewby
    end

    assert_redirected_to g_anewbies_path
  end
end
