class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.text :photo
      t.text :bio
      t.string :industry
      t.date :date_founded
      t.string :email
      t.integer :size

      t.timestamps null: false
    end
  end
end
