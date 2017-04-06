class Character < ActiveRecord::Base
	belongs_to :meta_characters
	has_and_belongs_to_many :comics
end
