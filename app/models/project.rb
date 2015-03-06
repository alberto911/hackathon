class Project < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	belongs_to :user

	validates :category, :description, :zone, :name, :start_date, :end_date, presence: true

	searchable do
		text :name, :description, :zone, :category
	end
end
