require 'test_helper'

class WorkingEndTimesControllerTest < ActionController::TestCase
  setup do
    @working_end_time = working_end_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:working_end_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create working_end_time" do
    assert_difference('WorkingEndTime.count') do
      post :create, working_end_time: { client_id: @working_end_time.client_id, friday: @working_end_time.friday, monday: @working_end_time.monday, satruday: @working_end_time.satruday, sunday: @working_end_time.sunday, tuesday: @working_end_time.tuesday, wednesday: @working_end_time.wednesday }
    end

    assert_redirected_to working_end_time_path(assigns(:working_end_time))
  end

  test "should show working_end_time" do
    get :show, id: @working_end_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @working_end_time
    assert_response :success
  end

  test "should update working_end_time" do
    patch :update, id: @working_end_time, working_end_time: { client_id: @working_end_time.client_id, friday: @working_end_time.friday, monday: @working_end_time.monday, satruday: @working_end_time.satruday, sunday: @working_end_time.sunday, tuesday: @working_end_time.tuesday, wednesday: @working_end_time.wednesday }
    assert_redirected_to working_end_time_path(assigns(:working_end_time))
  end

  test "should destroy working_end_time" do
    assert_difference('WorkingEndTime.count', -1) do
      delete :destroy, id: @working_end_time
    end

    assert_redirected_to working_end_times_path
  end
end
