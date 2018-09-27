class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :noOfDonors, :null => false
      t.string :bloodGroup, :null => false
      t.string :city, :null => false
      t.string :email, :null => false
      t.boolean :serviced, :default => false, :null => false

      t.timestamps
    end
  end
end
