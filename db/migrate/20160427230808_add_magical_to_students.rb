class AddMagicalToStudents < ActiveRecord::Migration
  def change
    add_column :students, :magical, :boolean
  end
end
