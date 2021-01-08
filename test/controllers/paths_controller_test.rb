require 'test_helper'

class PathsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @path = paths(:one)
  end

  test "should get index" do
    get paths_url, as: :json
    assert_response :success
  end

  test "should create path" do
    assert_difference('Path.count') do
      post paths_url, params: { path: { length: @path.length, mod1: @path.mod1, mod2: @path.mod2, route: @path.route } }, as: :json
    end

    assert_response 201
  end

  test "should show path" do
    get path_url(@path), as: :json
    assert_response :success
  end

  test "should update path" do
    patch path_url(@path), params: { path: { length: @path.length, mod1: @path.mod1, mod2: @path.mod2, route: @path.route } }, as: :json
    assert_response 200
  end

  test "should destroy path" do
    assert_difference('Path.count', -1) do
      delete path_url(@path), as: :json
    end

    assert_response 204
  end
end
