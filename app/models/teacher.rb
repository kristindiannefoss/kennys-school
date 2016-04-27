class Teacher < ActiveRecord::Base
  has_many :students

  def oldest_student_age
    students.maximum(:age)
  end

  def youngest_student_age
    students.minimum(:age)
  end
end
