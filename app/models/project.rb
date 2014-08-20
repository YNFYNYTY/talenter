class Project < ActiveRecord::Base
	has_and_belongs_to_many :skills
	has_many :steps
	validates :name,   presence: true
	validates :description,   presence: true
end
