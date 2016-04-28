class StudentsController < ApplicationController

  def index

    @students = Student.all
    @struggling = Student.all.order(:current_score).take(5)
    # byebug
  end

  def lowest_five
    @struggling = Student.all.order(:current_score).take(5)
  end
end
