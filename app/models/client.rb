class Client < ActiveRecord::Base
	has_one :user
	has_one :working_start_time
	has_one :working_end_time
	accepts_nested_attributes_for :user, :working_start_time, :working_end_time
end
