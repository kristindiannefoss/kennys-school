require 'test_helper'

class VisitorSeesTeacherListTest < ActionDispatch::IntegrationTest
  test "visitor sees list of teachers on teachers path" do
    teacher1 = Teacher.create(
                              first_name: "Rachel",
                              last_name:  "Warbelow"
                              )
    teacher2 = Teacher.create(
                              first_name: "Andrew",
                              last_name:  "Carmer"
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
    student2 = Student.create(
                              first_name: "Claudia",
                              last_name:  "Kiesenhofer",
                              age:        35,
                              teacher_id: teacher1.id
                              )
    student3 = Student.create(
                              first_name: "Sal",
                              last_name:  "Espinosa",
                              age:        35,
                              teacher_id: teacher2.id
                              )
    student4 = Student.create(
                              first_name: "Jon",
                              last_name:  "Liss",
                              age:        21,
                              teacher_id: teacher2.id
                              )
    student5 = Student.create(
                              first_name: "Luna",
                              last_name:  "Lovegood",
                              age:        30,
                              teacher_id: teacher2.id
                              )
    visit teachers_path

    assert page.has_content?("Rachel Warbelow")
    assert page.has_content?("Andrew Carmer")

    within ".#{teacher1.last_name}" do
      assert page.has_content?("Kris Foss")
      assert page.has_content?(32)
      assert page.has_content?("Claudia Kiesenhofer")
      assert page.has_content?(37)
    end

    within ".#{teacher2.last_name}" do
      assert page.has_content?(21)
      assert page.has_content?(35)
      assert page.has_content?("Sal Espinosa")
      assert page.has_content?("Jon Liss")
    end
  end
end
