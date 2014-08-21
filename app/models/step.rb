class Step < ActiveRecord::Base
	validates :name, presence: true
	belongs_to :project
	# validates :project_id, presence: true
end
