class AddDescriptionToStep < ActiveRecord::Migration
  def change
  	add_column :steps, :description, :string
  end
end
