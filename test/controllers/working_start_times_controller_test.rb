require 'test_helper'

class WorkingStartTimesControllerTest < ActionController::TestCase
  setup do
    @working_start_time = working_start_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:working_start_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create working_start_time" do
    assert_difference('WorkingStartTime.count') do
      post :create, working_start_time: { client_id: @working_start_time.client_id, friday: @working_start_time.friday, monday: @working_start_time.monday, satruday: @working_start_time.satruday, sunday: @working_start_time.sunday, tuesday: @working_start_time.tuesday, wednesday: @working_start_time.wednesday }
    end

    assert_redirected_to working_start_time_path(assigns(:working_start_time))
  end

  test "should show working_start_time" do
    get :show, id: @working_start_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @working_start_time
    assert_response :success
  end

  test "should update working_start_time" do
    patch :update, id: @working_start_time, working_start_time: { client_id: @working_start_time.client_id, friday: @working_start_time.friday, monday: @working_start_time.monday, satruday: @working_start_time.satruday, sunday: @working_start_time.sunday, tuesday: @working_start_time.tuesday, wednesday: @working_start_time.wednesday }
    assert_redirected_to working_start_time_path(assigns(:working_start_time))
  end

  test "should destroy working_start_time" do
    assert_difference('WorkingStartTime.count', -1) do
      delete :destroy, id: @working_start_time
    end

    assert_redirected_to working_start_times_path
  end
end
