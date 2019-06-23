class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      
      t.text :lineup
      t.integer :date
      t.text :univ

      t.timestamps null: false
    end
  end
end
