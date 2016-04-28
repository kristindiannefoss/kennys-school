class TeachersController < ApplicationController

  def index
    # byebug
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end
end
