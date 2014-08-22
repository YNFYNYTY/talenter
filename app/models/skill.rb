class Skill < ActiveRecord::Base
	validates :name, presence: true
	has_and_belongs_to_many :projects
	has_and_belongs_to_many :users
end
