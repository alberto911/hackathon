class Project < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	belongs_to :user

	searchable do
		text :name, :description, :zone, :category
	end
end
