class Job < ApplicationRecord
	has_many :boats
	has_many :boatjobs
end
