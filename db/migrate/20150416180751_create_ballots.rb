class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.integer :election_id
      t.datetime :time

      t.timestamps
    end
  end
end
