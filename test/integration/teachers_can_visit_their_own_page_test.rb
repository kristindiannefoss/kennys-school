require 'test_helper'

class TeachersCanVisitTheirOwnPageTest < ActionDispatch::IntegrationTest
  test "teachers can view only their information their own page" do
    create_teachers

    teacher = Teacher.first
    teacher2 = Teacher.last

    visit teacher_path(teacher)

    assert page.has_content?("Welcome #{teacher.first_name}")
    refute page.has_content?("Welcome #{teacher2.first_name}")
  end
end
