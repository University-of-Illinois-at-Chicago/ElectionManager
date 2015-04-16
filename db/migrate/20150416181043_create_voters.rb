class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.integer :election_id
      t.integer :user_id
      t.boolean :voted
      t.string :updid

      t.timestamps
    end
  end
end
