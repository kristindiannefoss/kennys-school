require 'test_helper'

class TeachersCanVisitTheirOwnPageTest < ActionDispatch::IntegrationTest
  test "teachers can view only their information their own page" do
    create_teachers(2)
    # byebug
    teacher = Teacher.first

    visit teacher_path(teacher)
    # save_and_open_page

    assert page.has_content?("Welcome #{teacher.first_name}")

  end
end
