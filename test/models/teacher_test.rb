require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  test "Can evaluate oldest and youngest student ages" do
    teacher1 = Teacher.create(
                              first_name: "Rachel",
                              last_name:  "Warbelow"
                              )
    student = Student.create(
                              first_name: "Harry",
                              last_name:  "Potter",
                              age:        37,
                              teacher_id: teacher1.id
                              )
    student1 = Student.create(
                              first_name: "Kris",
                              last_name:  "Foss",
                              age:        32,
                              teacher_id: teacher1.id
                              )
    expected = teacher1.youngest_student_age
    assert_equal 32, expected

    expected = teacher1.oldest_student_age
    assert_equal 37, expected
  end
end
