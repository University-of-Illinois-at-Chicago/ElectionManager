class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :ballot_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
