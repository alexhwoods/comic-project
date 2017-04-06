class MetaCharacter < ActiveRecord::Base
	belongs_to :publisher
	has_many :characters
end
