class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :category, null: false
      t.integer :creator, null: false
      t.text :description, null: false
      t.string :zone, null: false
      t.string :name, null: false
      t.integer :target, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps null: false
    end
  end
end
