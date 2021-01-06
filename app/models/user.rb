class User < ActiveRecord::Base 
    validates_uniqueness_of :username, case_sensitive: false
    has_many :reports

    has_secure_password

   
end 
