require 'test_helper'

class PoliticianRequestsControllerTest < ActionController::TestCase
  setup do
    @politician_request = politician_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:politician_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create politician_request" do
    assert_difference('PoliticianRequest.count') do
      post :create, politician_request: @politician_request.attributes
    end

    assert_redirected_to politician_request_path(assigns(:politician_request))
  end

  test "should show politician_request" do
    get :show, id: @politician_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @politician_request
    assert_response :success
  end

  test "should update politician_request" do
    put :update, id: @politician_request, politician_request: @politician_request.attributes
    assert_redirected_to politician_request_path(assigns(:politician_request))
  end

  test "should destroy politician_request" do
    assert_difference('PoliticianRequest.count', -1) do
      delete :destroy, id: @politician_request
    end

    assert_redirected_to politician_requests_path
  end
end
