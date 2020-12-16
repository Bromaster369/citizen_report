class User < ActiveRecord::Base 
    validates_uniqueness_of :username, case_sensitive: false
    has_many :reports

    has_secure_password

    def slug
        username.downcase.gsub(" ","-")
    end 

    def self.find_by_slug(slug)
        User.all.find{|user| user.slug == slug} 
    end 
end 
