class CreateRelationProjectsUsers < ActiveRecord::Migration
  def change
    create_table :relation_projects_users do |t|
    	t.belongs_to :project
      t.belongs_to :user
    end 
  end
end