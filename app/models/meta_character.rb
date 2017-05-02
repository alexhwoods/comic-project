class MetaCharacter < ActiveRecord::Base
	belongs_to :publisher
	has_many :characters
    has_one :page
end
