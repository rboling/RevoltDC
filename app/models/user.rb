class User < ActiveRecord::Base
	acts_as_authentic
	has_many :constituents, :class_name => 'User'
	has_many :politicians, :class_name => 'User'
end
