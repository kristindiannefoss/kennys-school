require 'test_helper'

class VisitorCanViewStudentsWithTeacherTest < ActionDispatch::IntegrationTest
  test "visitor views student with teacher name" do
    create_teachers

    student1 = Student.create(
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                age:       Random.rand(18..99),
                teacher_id: 1,
                current_score: Random.rand(1..10),
                magical: true)

    visit teachers_path

    within ".#{student1.teacher.last_name}" do
    assert page.has_content?("#{student1.first_name} #{student1.last_name}")
    end
  end
end
