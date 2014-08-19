class AddLongDescription < ActiveRecord::Migration
  def change
  	add_column :projects, :long_description, :string
  end
end
