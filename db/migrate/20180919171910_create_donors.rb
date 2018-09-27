class CreateDonors < ActiveRecord::Migration[5.2]
  def change
    create_table :donors do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :phoneNo, :null => false
      t.string :gender, :null => false
      t.integer :age, :null => false
      t.string :city, :null => false
      t.string :bloodGroup, :null => false
      t.date :lastDonateDate, :null => false

      t.timestamps
    end
  end
end
