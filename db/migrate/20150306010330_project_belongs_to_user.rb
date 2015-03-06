class ProjectBelongsToUser < ActiveRecord::Migration
  def change
		change_table(:users) do |t|
	  	t.belongs_to :user, index: true
		end
  end
end
