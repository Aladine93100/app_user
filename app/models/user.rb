class User < ActiveRecord::Base
	validates(:name, :city, :age, presence: true)
	validates :password , length: { minimum: 6 }
	has_secure_password
end