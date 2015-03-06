class AddPictureToProjects < ActiveRecord::Migration
  def change
		change_table(:projects) do |t|
	  	t.string :picture
		end
  end
end
