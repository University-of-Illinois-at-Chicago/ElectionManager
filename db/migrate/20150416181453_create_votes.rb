class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :ballot_id, :null => false
      t.integer :answer_id, :null => false

      t.timestamps
    end
  end
end
