class ChangeTypeToDegreeTypeOnDegrees < ActiveRecord::Migration
  def change
    remove_column :degrees, :type
    add_column :degrees, :degree_type, :string
  end
end
