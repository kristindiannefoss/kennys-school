class Danger::TeachersController < ApplicationController

  def index
    @concerning = Teacher.find_by(alter_ego: "Lycanthrope")
  end

end
