class Boat < ApplicationRecord
  belongs_to :user
  has_many :jobs
  has_many :boatjobs
end
