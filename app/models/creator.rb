class Creator < ActiveRecord::Base
	# since using rails conventions don't need to specify name
	has_and_belongs_to_many :comics
end
