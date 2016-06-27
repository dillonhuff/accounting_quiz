require 'test_helper'

class PunditsControllerTest < ActionController::TestCase
  setup do
    @pundit = pundits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pundits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pundit" do
    assert_difference('Pundit.count') do
      post :create, pundit: { name: @pundit.name }
    end

    assert_redirected_to pundit_path(assigns(:pundit))
  end

  test "should show pundit" do
    get :show, id: @pundit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pundit
    assert_response :success
  end

  test "should update pundit" do
    patch :update, id: @pundit, pundit: { name: @pundit.name }
    assert_redirected_to pundit_path(assigns(:pundit))
  end

  test "should destroy pundit" do
    assert_difference('Pundit.count', -1) do
      delete :destroy, id: @pundit
    end

    assert_redirected_to pundits_path
  end
end
