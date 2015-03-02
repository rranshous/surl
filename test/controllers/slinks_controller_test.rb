require 'test_helper'

class SlinksControllerTest < ActionController::TestCase
  setup do
    @slink = slinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slink" do
    assert_difference('Slink.count') do
      post :create, slink: { url: @slink.url }
    end

    assert_redirected_to slink_path(assigns(:slink))
  end

  test "should show slink" do
    get :show, id: @slink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slink
    assert_response :success
  end

  test "should update slink" do
    patch :update, id: @slink, slink: { url: @slink.url }
    assert_redirected_to slink_path(assigns(:slink))
  end

  test "should destroy slink" do
    assert_difference('Slink.count', -1) do
      delete :destroy, id: @slink
    end

    assert_redirected_to slinks_path
  end
end
