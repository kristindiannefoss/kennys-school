class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :teacher, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
    end
  end
end
