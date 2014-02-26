class Client < ActiveRecord::Base
	has_one :user
	has_one :working_start_time
	has_one :working_end_time
	accepts_nested_attributes_for :user
	accepts_nested_attributes_for :working_start_time
	accepts_nested_attributes_for :working_end_time
end
