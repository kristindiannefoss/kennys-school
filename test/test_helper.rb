ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/setup'
require 'capybara/rails'
require 'database_cleaner'

class ActiveSupport::TestCase

  fixtures :all

  def create_teachers
    Teacher.create(first_name: "Jillian", last_name: "Keeling")
    Teacher.create(first_name: "Blair", last_name: "Weber")
    Teacher.create(first_name: "Deondre", last_name: "Tromp")
    Teacher.create(first_name: "Aaron", last_name: "Hamill")
  end

  def create_students
    Student.create(teacher_id: 3,
    first_name: "Bella",
    last_name: "Lockman",
    age: 93,
    current_score: 9,
    magical: false)

    Student.create(teacher_id: 2,
    first_name: "Rosa",
    last_name: "Streich",
    age: 48,
    current_score: 9,
    magical: false )

    Student.create(teacher_id: 2,
    first_name: "Elnora",
    last_name: "Anderson",
    age: 64,
    current_score: 8,
    magical: true )

    Student.create(teacher_id: 2,
    first_name: "Shayna",
    last_name: "Mann",
    age: 96,
    current_score: 7,
    magical: false)

    Student.create(teacher_id: 3,
    first_name: "Kirk",
    last_name: "Parisian",
    age: 76,
    current_score: 5,
    magical: false)

    Student.create(teacher_id: 3,
    first_name: "Marley",
    last_name: "Wiegand",
    age: 41,
    current_score: 2,
    magical: true)

    Student.create(teacher_id: 3,
    first_name: "Jamaal",
    last_name: "Weissnat",
    age: 54,
    current_score: 3,
    magical: true)

    Student.create(teacher_id: 1,
    first_name: "Aimee",
    last_name: "Moen",
    age: 51,
    current_score: 1,
    magical: false )
  end
end


class ActionDispatch::IntegrationTest
  include Capybara::DSL

  DatabaseCleaner.strategy = :transaction
  DatabaseCleaner.clean_with(:truncation)

  def setup
    DatabaseCleaner.start
  end

  def teardown
    reset_session!
    DatabaseCleaner.clean
  end
end
