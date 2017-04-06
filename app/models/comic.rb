class Comic < ActiveRecord::Base

	belongs_to :publisher
	# has_many :characters
	has_and_belongs_to_many :creators
	has_and_belongs_to_many :characters

    scope :sorted, lambda { order("title ASC")}
    scope :search, lambda {|query| where(["name LIKE ?", "%#{query}"])}

# rails by default gives readers and writers for every column in the table





end
