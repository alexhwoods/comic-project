class Publisher < ActiveRecord::Base
    self.primary_key = 'name'

    has_many :comics
    has_many :meta_characters

end
