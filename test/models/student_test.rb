require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "Students can be created" do
    student = Student.create(
                              first_name: "Harry",
                              last_name:  "Potter",
                              age:        37,
                              )
    student1 = Student.create(
                              first_name: "Kris",
                              last_name:  "Foss",
                              age:        32,
                              )

    expected = student.age
    assert_equal 37, expected
    expected = student.first_name
    assert_equal "Harry", expected
    expected = student.last_name
    assert_equal "Potter", expected
  end
end
