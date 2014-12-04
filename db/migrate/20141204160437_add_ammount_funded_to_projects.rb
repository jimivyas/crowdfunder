class AddAmmountFundedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :amount_funded, :integer
  end
end
