class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :title, :default => "", :null => false
      t.text :description
      t.string :contact, :default => "", :null => false
      t.integer :user_id , :null => false
      t.datetime :start , :null => false
      t.datetime :finish , :null => false
      t.string :updid , :null => false
      t.timestamps
    end
  end
end
