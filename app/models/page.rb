class Page < ActiveRecord::Base
	validates :page_handle, presence: true
end
