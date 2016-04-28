class StudentsController < ApplicationController

  def index
    @struggling = Student.all.order(:current_score).take(5)
  end

  def lowest_five
    @struggling = Student.all.order(:current_score).take(5)
  end
end
