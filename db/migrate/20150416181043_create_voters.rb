class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.integer :election_id, :null => false
      t.integer :user_id, :null => false
      t.boolean :voted, :null => false, :default => 0
      t.string :updid, :null => false

      t.timestamps
    end
  end
end
