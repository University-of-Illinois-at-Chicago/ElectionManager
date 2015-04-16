class CreateElectionUsers < ActiveRecord::Migration
  def change
    create_table :election_users do |t|
      t.integer :election_id
      t.integer :user_id
      t.boolean :edit
      t.boolean :view_results
      t.string :updid

      t.timestamps
    end
  end
end
