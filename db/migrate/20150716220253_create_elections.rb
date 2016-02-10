class CreateElections < ActiveRecord::Migration
  def up 
    create_table :elections, :id => false do |t| 
      t.integer :id, :limit => 11, :default => 0, :null => false
      t.string :title, :default => "", :null => false
      t.text :description
      t.string :contact, :default => "", :null => false
      t.integer :user_id , :null => false
      t.datetime :start , :null => true 
      t.datetime :finish , :null => true 
      t.string :updid , :default =>"Unknown", :null => false
      t.timestamps
    end 

    add_index :elections, :id, :unique => true
    #add_index :elections, :user_id
  end 

  def down
    drop_table :elections
  end
end
