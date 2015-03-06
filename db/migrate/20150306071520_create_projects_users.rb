class CreateProjectsUsers < ActiveRecord::Migration
  def change
    create_join_table :users, :projects do |t|
			t.string :ife
			t.boolean :is_admin, null: false

			t.timestamps null: false
    end
  end
end
