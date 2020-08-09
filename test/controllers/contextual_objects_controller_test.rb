require 'test_helper'

class ContextualObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contextual_object = contextual_objects(:one)
  end

  test "should get index" do
    get contextual_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_contextual_object_url
    assert_response :success
  end

  test "should create contextual_object" do
    assert_difference('ContextualObject.count') do
      post contextual_objects_url, params: { contextual_object: {  } }
    end

    assert_redirected_to contextual_object_url(ContextualObject.last)
  end

  test "should show contextual_object" do
    get contextual_object_url(@contextual_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_contextual_object_url(@contextual_object)
    assert_response :success
  end

  test "should update contextual_object" do
    patch contextual_object_url(@contextual_object), params: { contextual_object: {  } }
    assert_redirected_to contextual_object_url(@contextual_object)
  end

  test "should destroy contextual_object" do
    assert_difference('ContextualObject.count', -1) do
      delete contextual_object_url(@contextual_object)
    end

    assert_redirected_to contextual_objects_url
  end
end
