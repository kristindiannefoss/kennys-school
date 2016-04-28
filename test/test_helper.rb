ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/setup'
require 'capybara/rails'
require 'database_cleaner'

class ActiveSupport::TestCase
  MAGIC = [ true, false ]
  TEACHERID = [ 1, 2, 3 ]

  fixtures :all

  def create_teachers(num = 1)
    num.times do
      Teacher.create(
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name
      )
    end
  end

  def create_students(num = 1, magic = true)
    num.times do
      Student.create(
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            age:       Random.rand(18..99),
            teacher_id: TEACHERID.sample,
            current_score: Random.rand(1..10),
            magical: MAGIC.sample
      )
    end
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
