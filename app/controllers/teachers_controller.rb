class TeachersController < ApplicationController

  def index
    # byebug
    @teachers = Teacher.all
  end
end
