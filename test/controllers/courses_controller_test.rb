require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { class_room: @course.class_room, course_code: @course.course_code, course_time: @course.course_time, course_type: @course.course_type, course_week: @course.course_week, created_at: @course.created_at, credit: @course.credit, exam_type: @course.exam_type, limit_num: @course.limit_num, name: @course.name, open: @course.open, student_num: @course.student_num, teacher_id: @course.teacher_id, teaching_type: @course.teaching_type, updated_at: @course.updated_at }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { class_room: @course.class_room, course_code: @course.course_code, course_time: @course.course_time, course_type: @course.course_type, course_week: @course.course_week, created_at: @course.created_at, credit: @course.credit, exam_type: @course.exam_type, limit_num: @course.limit_num, name: @course.name, open: @course.open, student_num: @course.student_num, teacher_id: @course.teacher_id, teaching_type: @course.teaching_type, updated_at: @course.updated_at }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
