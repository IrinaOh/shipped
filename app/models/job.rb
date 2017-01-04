class Job < ApplicationRecord
	has_many :boats, through: :boatjobs
	has_many :boatjobs

	validates :description, :length => {minimum: 50, maximum: 250, :message => "Description should have between 50 and 250 caracters"}
	validates :name, :uniqueness => { :message => "This name has been used, please, try again"}
	validates :cost, :numericality => { :greater_than => 1000.00, :message => "Cost must be greater than $1000"}
end
