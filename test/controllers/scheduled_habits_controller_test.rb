require 'test_helper'

class ScheduledHabitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scheduled_habit = scheduled_habits(:one)
  end

  test "should get index" do
    get scheduled_habits_url
    assert_response :success
  end

  test "should get new" do
    get new_scheduled_habit_url
    assert_response :success
  end

  test "should create scheduled_habit" do
    assert_difference('ScheduledHabit.count') do
      post scheduled_habits_url, params: { scheduled_habit: {  } }
    end

    assert_redirected_to scheduled_habit_url(ScheduledHabit.last)
  end

  test "should show scheduled_habit" do
    get scheduled_habit_url(@scheduled_habit)
    assert_response :success
  end

  test "should get edit" do
    get edit_scheduled_habit_url(@scheduled_habit)
    assert_response :success
  end

  test "should update scheduled_habit" do
    patch scheduled_habit_url(@scheduled_habit), params: { scheduled_habit: {  } }
    assert_redirected_to scheduled_habit_url(@scheduled_habit)
  end

  test "should destroy scheduled_habit" do
    assert_difference('ScheduledHabit.count', -1) do
      delete scheduled_habit_url(@scheduled_habit)
    end

    assert_redirected_to scheduled_habits_url
  end
end
