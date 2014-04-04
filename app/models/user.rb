class User < ActiveRecord::Base
	validates(:name, :city, :age, presence: true)
end