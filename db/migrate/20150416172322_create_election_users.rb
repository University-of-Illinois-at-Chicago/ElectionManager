class CreateElectionUsers < ActiveRecord::Migration
  def change
    create_table :election_users do |t|
      t.integer :election_id , :null => false
      t.integer :user_id , :null => false
      t.boolean :edit , :null => false, :default => 0
      t.boolean :view_results, :null => false, :default => 0
      t.string :updid, :null => false
      t.timestamps
    end
  end
end
