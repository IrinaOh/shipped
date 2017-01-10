class Job < ApplicationRecord
	has_many :boats, through: :boatjobs
	has_many :boatjobs

	validates :description, :length => {minimum: 50, maximum: 250, :message => "Description should have between 50 and 250 caracters"}
	validates_inclusion_of :origin, :in => ['China', 'Finland', 'Spain', 'US']
 	validates_inclusion_of :destination, :in => ['China', 'Finland', 'Spain', 'US']
	validates :cost, :numericality => { :greater_than => 1000.00, :message => "Cost must be greater than $1000"}
end
