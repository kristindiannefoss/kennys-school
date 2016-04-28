require 'test_helper'

class VisitorCanSeeTeacherWhoTransformTest < ActionDispatch::IntegrationTest
  test "vistor can see first teacher in the database who may transform during a full moon" do

    Teacher.create(first_name: "Jillian", last_name: "Keeling", alter_ego: "Sherah")
    Teacher.create(first_name: "Daniel", last_name: "Carning", alter_ego: "Lycanthrope")
    Teacher.create(first_name: "Deondre", last_name: "Tromp", alter_ego: "Ziggy Stardust")
    Teacher.create(first_name: "Aaron", last_name: "Hamill", alter_ego: "Lycanthrope")

    visit danger_teachers_path

    assert page.has_content?("Teacher with Dangerous Tendencies")
    assert page.has_content?("Lycanthrope")
    assert page.has_content?("Daniel Carning")
    refute page.has_content?("Aaron Hamill")
    refute page.has_content?("Jillian Keeling")
    refute page.has_content?("Deondre Tromp")
  end
end
