require 'test_helper'

class VisitorCanViewMagicStudentsTest < ActionDispatch::IntegrationTest
  test "visitor can view a page with all the magical students" do
    # create_students(2)
    magician1 =   Student.create(
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                age:       Random.rand(18..99),
                teacher_id: 1,
                current_score: Random.rand(1..10),
                magical: true
          )
    magician2 =   Student.create(
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                age:       Random.rand(18..99),
                teacher_id: 1,
                current_score: Random.rand(1..10),
                magical: true
          )
    muggle =      Student.create(
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                age:       Random.rand(18..99),
                teacher_id: 1,
                current_score: Random.rand(1..10),
                magical: false
          )
    # magician2 = Student.second
    create_students(4, false)

    visit students_path

    assert_equal 7, Student.all.count
# save_and_open_page
    within ".magic" do
      assert page.has_content?(magician1.first_name)
      assert page.has_content?(magician2.first_name)
      refute page.has_content?(muggle.first_name)
    end
  end
end
