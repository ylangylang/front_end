require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { detail: @task.detail, due_date: @task.due_date, finished_on: @task.finished_on, icon_id: @task.icon_id, is_current: @task.is_current, is_indicated: @task.is_indicated, started_on: @task.started_on, status_id: @task.status_id, subject: @task.subject, tag_id: @task.tag_id, user_id: @task.user_id }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { detail: @task.detail, due_date: @task.due_date, finished_on: @task.finished_on, icon_id: @task.icon_id, is_current: @task.is_current, is_indicated: @task.is_indicated, started_on: @task.started_on, status_id: @task.status_id, subject: @task.subject, tag_id: @task.tag_id, user_id: @task.user_id }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
