class Hello < ApplicationRecord
	mount_uploader :file_location
	validates_presence_of :title, :date, :description, :file_location
end
