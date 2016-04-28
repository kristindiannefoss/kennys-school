class AddAlterEgoToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :alter_ego, :string
  end
end
