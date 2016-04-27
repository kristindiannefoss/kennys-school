require 'test_helper'

class VisitorCanViewStudentsWithTeacherTest < ActionDispatch::IntegrationTest
  test "visitor views student with teacher name" do
    create_students(3)
    create_teachers(2)
    student1 = Student.first
    student2 = Student.second
    student3 = Student.third

    assert page.has_content?("#{student1.first_name} #{student1.last_name}: #{student1.teacher.first_name} #{student1.teacher.last_name}")
  end
end
