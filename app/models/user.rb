class User < ActiveRecord::Base

    # for verifying passwords
    # http://stackoverflow.com/questions/7219844/how-can-i-add-basic-encryption-to-password
    before_save { self.email = email.downcase }

    validates :name, presence: true, length: { maximum: 50 }
    # make sure the user has a valid email
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

    has_secure_password
    validates :password, length: { minimum: 6 }
end
