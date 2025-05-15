require "test_helper"

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get profile_home_url
    assert_response :success
  end

  test "should get about" do
    get profile_about_url
    assert_response :success
  end

  test "should get register" do
    get profile_register_url
    assert_response :success
  end

  test "should get login" do
    get profile_login_url
    assert_response :success
  end

  test "should get assignment" do
    get profile_assignment_url
    assert_response :success
  end

  test "should get course" do
    get profile_course_url
    assert_response :success
  end

  test "should get course_detail" do
    get profile_course_detail_url
    assert_response :success
  end

  test "should get dashboard" do
    get profile_dashboard_url
    assert_response :success
  end

  test "should get grade" do
    get profile_grade_url
    assert_response :success
  end

  test "should get lecture" do
    get profile_lecture_url
    assert_response :success
  end

  test "should get list" do
    get profile_list_url
    assert_response :success
  end

  test "should get logout" do
    get profile_logout_url
    assert_response :success
  end

  test "should get setting" do
    get profile_setting_url
    assert_response :success
  end

  test "should get notification" do
    get profile_notification_url
    assert_response :success
  end

  test "should get progress" do
    get profile_progress_url
    assert_response :success
  end

  test "should get quiz" do
    get profile_quiz_url
    assert_response :success
  end

  test "should get attendance" do
    get profile_attendance_url
    assert_response :success
  end
end
