class User < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :email, :username
    has_many :posts
    def as_json(opts = {})
        # go to the previouis defined
        super(opts.merge(only:[:first_name, :last_name, :id, :username])) 
    end
end
