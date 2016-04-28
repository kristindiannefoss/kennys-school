require 'test_helper'

class VisitorCanViewStrugglingStudentsTest < ActionDispatch::IntegrationTest
  # test "visitor can view 5 most struggling students" do
  #   create_students(8)
  #   # byebug
  #   student_ordered = Student.all.order(:current_score)
  #
  #   visit students_path
  #   save_and_open_page
  #
  #   assert page.has_content?(student_ordered[0].first_name)
  #   assert page.has_content?(student_ordered[1].first_name)
  #   assert page.has_content?(student_ordered[2].first_name)
  #   assert page.has_content?(student_ordered[3].first_name)
  #   assert page.has_content?(student_ordered[4].first_name)
  # end
end
