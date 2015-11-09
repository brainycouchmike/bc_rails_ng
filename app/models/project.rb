class Project < ActiveRecord::Base
	validates :project_handle, presence: true
end
