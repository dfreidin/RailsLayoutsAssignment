class User < ActiveRecord::Base
    has_many :posts
    validates :first_name, :last_name, presence: true
end
