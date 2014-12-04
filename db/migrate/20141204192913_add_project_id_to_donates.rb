class AddProjectIdToDonates < ActiveRecord::Migration
  def change
  	add_column :donates, :project_id, :integer
  	add_column :donates, :donor_id, :integer
  end
end
