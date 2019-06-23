class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      
      t.text :univ
      t.integer :date
      t.text :lineup

      t.timestamps null: false
    end
  end
end
