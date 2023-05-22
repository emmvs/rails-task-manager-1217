require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "should get show" do
  #   get tasks_show_url
  #   assert_response :success
  # end

  # test "should get index" do
  #   get tasks_index_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get tasks_new_url
  #   assert_response :success
  # end

  # test "should get create" do
  #   get tasks_create_url
  #   assert_response :success
  # end

  # test "should get update" do
  #   get tasks_update_url
  #   assert_response :success
  # end

  test "should delete a task" do
    t = Task.create(title: "Make the bed", details: "Dont be lazy")
    delete delete_task_url(Task.last)
    assert_response :success
    assert Task.find_by(id: t.id).nil?
  end
end
