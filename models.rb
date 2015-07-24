class User < ActiveRecord::Base
	has_many :choices
end

class Choice < ActiveRecord::Base
	belongs_to :user
end