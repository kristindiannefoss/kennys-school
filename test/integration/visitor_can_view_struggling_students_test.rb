require 'test_helper'

class VisitorCanViewStrugglingStudentsTest < ActionDispatch::IntegrationTest
  test "visitor can view 5 most struggling students" do
    create_students

    student_ordered = Student.all.order(:current_score)

    visit students_path

    assert page.has_content?(student_ordered[0].last_name)
    assert page.has_content?(student_ordered[1].last_name)
    assert page.has_content?(student_ordered[2].last_name)
    assert page.has_content?(student_ordered[3].last_name)
    assert page.has_content?(student_ordered[4].last_name)
  end
end
