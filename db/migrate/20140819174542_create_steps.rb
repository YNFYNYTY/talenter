class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
    	t.integer :project_id
    	t.string :name
      t.timestamps
    end
  end
end
