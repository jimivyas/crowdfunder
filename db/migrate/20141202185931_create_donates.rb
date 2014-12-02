class CreateDonates < ActiveRecord::Migration
  def change
    create_table :donates do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
