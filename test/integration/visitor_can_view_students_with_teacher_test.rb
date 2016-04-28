require 'test_helper'

class VisitorCanViewStudentsWithTeacherTest < ActionDispatch::IntegrationTest
  # test "visitor views student with teacher name" do
  #   # create_teachers(3)
  #   # #
  #   # create_students(3)
  #
  #   2.times do
  #     Teacher.create(
  #           first_name: Faker::Name.first_name,
  #           last_name: Faker::Name.last_name
  #     )
  #   end
  #
  #   2.times do
  #     Student.create(
  #           first_name: Faker::Name.first_name,
  #           last_name: Faker::Name.last_name,
  #           age:       Random.rand(18..99),
  #           teacher_id: Teacher.all.sample.id,
  #           current_score: Random.rand(1..10),
  #           magical: MAGIC.sample
  #     )
  #   end
  #
  #   student1 = Student.first
  #   student2 = Student.second
  #   # student3 = Student.third
  #   # byebug
  #
  #   visit students_path
  #   # save_and_open_page
  #   assert page.has_content?("#{Student.first.first_name} #{student1.last_name}: #{student1.teacher.first_name} #{student1.teacher.last_name}")
  # end
end
