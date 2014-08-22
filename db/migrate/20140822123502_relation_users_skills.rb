class RelationUsersSkills < ActiveRecord::Migration
  def change
  	create_table :relation_users_skills do |t|
  		t.belongs_to :user
  		t.belongs_to :skill
  	end
  end
end